#include <stdio.h>
#include <stdint.h>


#define RSANUMWORDS 96

/* RSA public key definition */
typedef struct rsa_public_key {
	uint32_t n[RSANUMWORDS];  /* modulus as little endian array */
	uint32_t rr[RSANUMWORDS]; /* R^2 as little endian array */
	uint32_t n0inv;           /* -1 / n[0] mod 2^32 */
} rsa_pub_key_t;

struct rsa_public_key mykey = {

//uint32_t n[RSANUMWORDS] = {
{
0x6a6a75e1,
0xa018ddc5,
0x687bb168,
0x8e8205a5,
0x7dbfffa7,
0xc8722ac5,
0xf84d21cf,
0xe1312531,
0x0ce3f8a3,
0xa825f988,
0x57f51964,
0xb27e206a,
0x8e1dd008,
0x1c4fb8d7,
0x824fb142,
0x1c8be7b3,
0x7b9d6366,
0xc56ad0f2,
0xef762d5b,
0x4b1431e3,
0x8ae28eb9,
0xd41db7aa,
0x43cccdf7,
0x91b74a84,
0x80183850,
0x30e74d0d,
0xb62ed015,
0x235574d2,
0x8c28f251,
0x4f40def2,
0x24e2efdb,
0x9ebd1ff2,
0xfa7b49ee,
0x2819a938,
0x6e66b8c8,
0x24e41546,
0x4d783a7c,
0xd2947d3d,
0x1ab269e9,
0xfad39f16,
0xaab78f7b,
0x49d8b510,
0x35bf0dfb,
0xeb274754,
0x069eccc9,
0xc13c437e,
0xe3bc0f60,
0xc9e0e12f,
0xc253ac43,
0x89c240e0,
0xc4aba4e5,
0xedf34bc0,
0x5402c462,
0x4021b0bd,
0x996b6241,
0xc3d9945f,
0xa137ac60,
0xf0250bf5,
0xc8c7100f,
0xb70d6b88,
0x78916a8c,
0x33370e5d,
0x3970dcb9,
0xaf4c58b4,
0x5f78cb0d,
0xb02d90b7,
0xeb6c3d05,
0x04afc71a,
0x45185f0f,
0x987caa5b,
0x33976249,
0x565afdbc,
0x80a85056,
0x59e07655,
0x9a29e77d,
0x7a8dfb7f,
0x782e0204,
0x4d6713ff,
0x131000ea,
0xe18e1206,
0x21f57f30,
0xf24f038b,
0x59cf874d,
0x24c50525,
0xb52f170d,
0x46c9adde,
0x90e82c73,
0x1344ceaf,
0x663209f2,
0x24bd4fbf,
0x5e4ed04d,
0x0fce770a,
0x81f78793,
0xa792e13e,
0xa6c7bf58,
0xe1df9be8
//};
},

//uint32_t RR[RSANUMWORDS] = {
{
0xa3eb77fa,
0x9db9a2ac,
0x2c19d4ae,
0xfb5be1e7,
0xdd38f5fb,
0xd0f4fdda,
0xeb165cd3,
0x546a7cfe,
0xcd410c5c,
0x73f5cf6b,
0x1185bcae,
0xda2e2103,
0xbab5ae26,
0x76e77aba,
0xf49dd5f7,
0x32318a29,
0x689a85bc,
0x8aa862a9,
0x538c240e,
0xb61eab77,
0x9ccd73f2,
0x6563c81a,
0x6c65ac0e,
0x90b209bf,
0xe642e25e,
0x7e351549,
0x879a1830,
0xc75cbb02,
0xe0112362,
0xebc2405f,
0x01dc7990,
0x3d3d07f3,
0xc5b9a5be,
0x98d8cc33,
0xdd65e108,
0xce301343,
0x0dbdc0cb,
0xc204b9ca,
0xeabe1810,
0x9849163a,
0x234c8ff7,
0x9bc14e3b,
0x4b4c2226,
0x079883be,
0xba59c5f5,
0xd9c77317,
0x1ce689f5,
0x05f49af5,
0x7a83d42a,
0xc509b5ca,
0x0811a95f,
0x093520a2,
0x73649941,
0xd9691ef5,
0x6878ec0d,
0x4043add6,
0x7516d8b7,
0x5c7070ff,
0x4ce52e1d,
0xf209e123,
0xfe4319c4,
0x9774620a,
0x7a58d047,
0x524b09b7,
0x96cbf044,
0x2a9044a2,
0x514995dc,
0xe4b83ed6,
0xd21be300,
0x2966d4f8,
0xd9ee19c4,
0xb60788f6,
0xf8d074ab,
0xa7e13295,
0x93718edc,
0xba9fc096,
0x0ad2fbbc,
0x9fe0c363,
0x472a10b4,
0xda9c946b,
0x37276997,
0x04e452fc,
0xd19233b5,
0xa277ef0e,
0x49619ddd,
0xb5822d56,
0x6ca4d02f,
0x7d0c0fc3,
0xa29196e2,
0xb6988a4f,
0x785b7552,
0xeaee3c24,
0x87993424,
0xfcb49693,
0x21e64d84,
0x9e2dcea8
//};
},

//uint32_t d0inv = 0xf09b71df;

0xf09b71df };


// large number > N
uint32_t rnd_large[RSANUMWORDS] = {
0xd1657e7e,
0x12abb287,
0x1beed6c4,
0xc7f071ac,
0xda176e24,
0xf10c196c,
0x48fb1db1,
0x7bceec9d,
0x507ca304,
0x05ab06a1,
0xbcc1ba07,
0x64dd1378,
0xf7c279a0,
0xda6788b3,
0x4251cc14,
0x87310039,
0x661de4f6,
0xd3a87163,
0xf63ba6a4,
0x0a2a2a11,
0x8fae2731,
0x3532e4c7,
0xf6a76ae4,
0x2165b411,
0x3d4a304a,
0x2cc27646,
0x4d4d3fdd,
0xd1912753,
0x3753a74c,
0xc553d7dd,
0xb0803064,
0x6ffb24d9,
0x4542068c,
0xe4887f52,
0x704b683c,
0x06652060,
0xc88f161f,
0xc4a5ac6c,
0x27fcf0cd,
0x82c89bbc,
0x213cd27c,
0xd8a9748e,
0x61390b25,
0x78fe47ad,
0x046b37cd,
0xd0afb24f,
0x434763c1,
0x9020bdde,
0xfb9b2791,
0x54ef42a5,
0x4a7e7b51,
0x3f4a8cba,
0x22d29306,
0xfd53ccd9,
0xeeb660be,
0x210e9532,
0xfef0afc0,
0x4704a54c,
0x74b7de19,
0x97ad5e58,
0xac8a6b85,
0x990277a2,
0x1841e0d6,
0xf5ab31e6,
0xe2e6aedd,
0x978b3502,
0xbfd41ece,
0x28b03f3f,
0xe3bc0203,
0x4d251035,
0x7877bc45,
0x57f7962d,
0xbd14ac23,
0xbb35617a,
0x2fed3f47,
0xb60556ee,
0xaf7bd40d,
0xd1d471a1,
0x0667a97c,
0xcae2a0bb,
0xc7173e83,
0xf91cbf95,
0xc017ab4b,
0x81ebb33b,
0x356be8f9,
0x574712bd,
0xdf5bb417,
0x5be5499f,
0xa88ed0fa,
0xc8147dda,
0xe022dadc,
0xeceb4275,
0xb3258d64,
0xeef4acf4,
0x67b8d246,
0xe43960f2
};



uint64_t mul32(uint64_t a, uint64_t b) {
    return a*b;
}

uint64_t mula32(uint64_t a, uint64_t b, uint64_t c) {
    return a*b+c;
}

uint64_t mulaa32(uint64_t a, uint64_t b, uint64_t c, uint64_t d) {
    return a*b+c+d;
}

/**
 * a[] -= mod
 */
static void sub_mod(const struct rsa_public_key *key, uint32_t *a)
{
	int64_t A = 0;
	uint32_t i;
	for (i = 0; i < RSANUMWORDS; ++i) {
		A += (uint64_t)a[i] - key->n[i];
		a[i] = (uint32_t)A;
		A >>= 32;
	}
}

/**
 * Return a[] >= mod
 */
static int ge_mod(const struct rsa_public_key *key, const uint32_t *a)
{
	uint32_t i;
	for (i = RSANUMWORDS; i;) {
		--i;
		if (a[i] < key->n[i])
			return 0;
		if (a[i] > key->n[i])
			return 1;
	}
	return 1;  /* equal */
}

/**
 * Montgomery c[] += a * b[] / R % mod
 */
static void mont_mul_add(const struct rsa_public_key *key,
			 uint32_t *c,
			 const uint32_t a,
			 const uint32_t *b)
{
	uint64_t A = mula32(a, b[0], c[0]);
	uint32_t d0 = (uint32_t)A * key->n0inv;
	uint64_t B = mula32(d0, key->n[0], A);
	uint32_t i;
	for (i = 1; i < RSANUMWORDS; ++i) {
		A = mulaa32(a, b[i], c[i], A >> 32);
		B = mulaa32(d0, key->n[i], A, B >> 32);
		c[i - 1] = (uint32_t)B;
	}
	A = (A >> 32) + (B >> 32);
	c[i - 1] = (uint32_t)A;
	if (A >> 32)
		sub_mod(key, c);
}


/**
 * Montgomery c[] = a[] * b[] / R % mod
 */
static void mont_mul(const struct rsa_public_key *key,
		     uint32_t *c,
		     const uint32_t *a,
		     const uint32_t *b)
{
	uint32_t i;
	for (i = 0; i < RSANUMWORDS; ++i)
		c[i] = 0;
	for (i = 0; i < RSANUMWORDS; ++i)
		mont_mul_add(key, c, a[i], b);
}

/**
 * In-place public exponentiation.
 * Exponent depends on the configuration (65537 (default), or 3).
 *
 * @param key		Key to use in signing
 * @param inout		Input and output big-endian byte array
 * @param workbuf32	Work buffer; caller must verify this is
 *			3 x RSANUMWORDS elements long.
 */
static void mod_pow(const struct rsa_public_key *key, uint8_t *inout,
		    uint32_t *workbuf32)
{
	uint32_t *a = workbuf32;
	uint32_t *a_r = a + RSANUMWORDS;
	uint32_t *aa_r = a_r + RSANUMWORDS;
	uint32_t *aaa = aa_r;  /* Re-use location. */
	int i;
	/* Convert from big endian byte array to little endian word array. */
	for (i = 0; i < RSANUMWORDS; ++i) {
		uint32_t tmp =
			(inout[((RSANUMWORDS - 1 - i) * 4) + 0] << 24) |
			(inout[((RSANUMWORDS - 1 - i) * 4) + 1] << 16) |
			(inout[((RSANUMWORDS - 1 - i) * 4) + 2] << 8) |
			(inout[((RSANUMWORDS - 1 - i) * 4) + 3] << 0);
		a[i] = tmp;
	}
	/* TODO(drinkcat): This operation could be precomputed to save time. */
	mont_mul(key, a_r, a, key->rr);  /* a_r = a * RR / R mod M */
#ifdef CONFIG_RSA_EXPONENT_3
	mont_mul(key, aa_r, a_r, a_r);
	mont_mul(key, a, aa_r, a_r);
	mont_mul_1(key, aaa, a);
#else
	/* Exponent 65537 */
	for (i = 0; i < 16; i += 2) {
		mont_mul(key, aa_r, a_r, a_r); /* aa_r = a_r * a_r / R mod M */
		mont_mul(key, a_r, aa_r, aa_r);/* a_r = aa_r * aa_r / R mod M */
	}
	mont_mul(key, aaa, a_r, a);  /* aaa = a_r * a / R mod M */
#endif
	/* Make sure aaa < mod; aaa is at most 1x mod too large. */
	if (ge_mod(key, aaa))
		sub_mod(key, aaa);
	/* Convert to bigendian byte array */
	for (i = RSANUMWORDS - 1; i >= 0; --i) {
		uint32_t tmp = aaa[i];
		*inout++ = (uint8_t)(tmp >> 24);
		*inout++ = (uint8_t)(tmp >> 16);
		*inout++ = (uint8_t)(tmp >>  8);
		*inout++ = (uint8_t)(tmp >>  0);
	}
}


int main(void) {
    uint32_t a = 0xa75582ed;
    uint32_t b = 0x33bc646d;
    //uint32_t a = 0xffffffff;
    //uint32_t b = 0xffffffff;
    uint32_t c = 0x9920da2a;
    uint32_t d = 0xf96ed049;
    uint64_t res;
    uint32_t workbuf[3*RSANUMWORDS];
    uint8_t buf[4*RSANUMWORDS];
    buf[95] = 2;
    res = mulaa32(a,b,c,d);
    printf("Result %llX", res);
    sub_mod(&mykey, rnd_large);
    mod_pow(&mykey,buf,workbuf);
    for (int i=0; i<(RSANUMWORDS*4); i++) {
        printf("Limb %d: 0x%08x\n", i, buf[i]);
    }
    printf("Hello World!");
}

