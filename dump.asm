
rsa_rv.elf:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <register_fini>:
   10074:	00000793          	li	a5,0
   10078:	c799                	beqz	a5,10086 <register_fini+0x12>
   1007a:	00001517          	auipc	a0,0x1
   1007e:	82050513          	addi	a0,a0,-2016 # 1089a <__libc_fini_array>
   10082:	0510006f          	j	108d2 <atexit>
   10086:	8082                	ret

00010088 <_start>:
   10088:	00001197          	auipc	gp,0x1
   1008c:	78818193          	addi	gp,gp,1928 # 11810 <__global_pointer$>
   10090:	0bc18513          	addi	a0,gp,188 # 118cc <completed.1>
   10094:	0d818613          	addi	a2,gp,216 # 118e8 <__BSS_END__>
   10098:	8e09                	sub	a2,a2,a0
   1009a:	4581                	li	a1,0
   1009c:	2d61                	jal	10734 <memset>
   1009e:	00001517          	auipc	a0,0x1
   100a2:	83450513          	addi	a0,a0,-1996 # 108d2 <atexit>
   100a6:	c519                	beqz	a0,100b4 <_start+0x2c>
   100a8:	00000517          	auipc	a0,0x0
   100ac:	7f250513          	addi	a0,a0,2034 # 1089a <__libc_fini_array>
   100b0:	023000ef          	jal	ra,108d2 <atexit>
   100b4:	2d19                	jal	106ca <__libc_init_array>
   100b6:	4502                	lw	a0,0(sp)
   100b8:	004c                	addi	a1,sp,4
   100ba:	4601                	li	a2,0
   100bc:	2b79                	jal	1065a <main>
   100be:	abcd                	j	106b0 <exit>

000100c0 <__do_global_dtors_aux>:
   100c0:	1141                	addi	sp,sp,-16
   100c2:	c422                	sw	s0,8(sp)
   100c4:	0bc18413          	addi	s0,gp,188 # 118cc <completed.1>
   100c8:	00044783          	lbu	a5,0(s0)
   100cc:	c606                	sw	ra,12(sp)
   100ce:	ef99                	bnez	a5,100ec <__do_global_dtors_aux+0x2c>
   100d0:	00000793          	li	a5,0
   100d4:	cb89                	beqz	a5,100e6 <__do_global_dtors_aux+0x26>
   100d6:	00001517          	auipc	a0,0x1
   100da:	f2a50513          	addi	a0,a0,-214 # 11000 <__FRAME_END__>
   100de:	00000097          	auipc	ra,0x0
   100e2:	000000e7          	jalr	zero # 0 <register_fini-0x10074>
   100e6:	4785                	li	a5,1
   100e8:	00f40023          	sb	a5,0(s0)
   100ec:	40b2                	lw	ra,12(sp)
   100ee:	4422                	lw	s0,8(sp)
   100f0:	0141                	addi	sp,sp,16
   100f2:	8082                	ret

000100f4 <frame_dummy>:
   100f4:	00000793          	li	a5,0
   100f8:	cb99                	beqz	a5,1010e <frame_dummy+0x1a>
   100fa:	0c018593          	addi	a1,gp,192 # 118d0 <object.0>
   100fe:	00001517          	auipc	a0,0x1
   10102:	f0250513          	addi	a0,a0,-254 # 11000 <__FRAME_END__>
   10106:	00000317          	auipc	t1,0x0
   1010a:	00000067          	jr	zero # 0 <register_fini-0x10074>
   1010e:	8082                	ret

00010110 <mul32>:
   10110:	1101                	addi	sp,sp,-32
   10112:	ce22                	sw	s0,28(sp)
   10114:	1000                	addi	s0,sp,32
   10116:	fea42623          	sw	a0,-20(s0)
   1011a:	feb42423          	sw	a1,-24(s0)
   1011e:	fec42583          	lw	a1,-20(s0)
   10122:	862e                	mv	a2,a1
   10124:	4681                	li	a3,0
   10126:	fe842583          	lw	a1,-24(s0)
   1012a:	872e                	mv	a4,a1
   1012c:	4781                	li	a5,0
   1012e:	02e68533          	mul	a0,a3,a4
   10132:	02c785b3          	mul	a1,a5,a2
   10136:	95aa                	add	a1,a1,a0
   10138:	02e60533          	mul	a0,a2,a4
   1013c:	02e638b3          	mulhu	a7,a2,a4
   10140:	882a                	mv	a6,a0
   10142:	011587b3          	add	a5,a1,a7
   10146:	88be                	mv	a7,a5
   10148:	8742                	mv	a4,a6
   1014a:	87c6                	mv	a5,a7
   1014c:	853a                	mv	a0,a4
   1014e:	85be                	mv	a1,a5
   10150:	4472                	lw	s0,28(sp)
   10152:	6105                	addi	sp,sp,32
   10154:	8082                	ret

00010156 <mula32>:
   10156:	1101                	addi	sp,sp,-32
   10158:	ce22                	sw	s0,28(sp)
   1015a:	1000                	addi	s0,sp,32
   1015c:	fea42623          	sw	a0,-20(s0)
   10160:	feb42423          	sw	a1,-24(s0)
   10164:	fec42223          	sw	a2,-28(s0)
   10168:	fec42683          	lw	a3,-20(s0)
   1016c:	8336                	mv	t1,a3
   1016e:	4381                	li	t2,0
   10170:	fe842683          	lw	a3,-24(s0)
   10174:	8836                	mv	a6,a3
   10176:	4881                	li	a7,0
   10178:	03038633          	mul	a2,t2,a6
   1017c:	026886b3          	mul	a3,a7,t1
   10180:	96b2                	add	a3,a3,a2
   10182:	03030633          	mul	a2,t1,a6
   10186:	030337b3          	mulhu	a5,t1,a6
   1018a:	8732                	mv	a4,a2
   1018c:	96be                	add	a3,a3,a5
   1018e:	87b6                	mv	a5,a3
   10190:	fe442683          	lw	a3,-28(s0)
   10194:	8e36                	mv	t3,a3
   10196:	4e81                	li	t4,0
   10198:	01c70633          	add	a2,a4,t3
   1019c:	85b2                	mv	a1,a2
   1019e:	00e5b5b3          	sltu	a1,a1,a4
   101a2:	01d786b3          	add	a3,a5,t4
   101a6:	00d587b3          	add	a5,a1,a3
   101aa:	86be                	mv	a3,a5
   101ac:	8732                	mv	a4,a2
   101ae:	87b6                	mv	a5,a3
   101b0:	853a                	mv	a0,a4
   101b2:	85be                	mv	a1,a5
   101b4:	4472                	lw	s0,28(sp)
   101b6:	6105                	addi	sp,sp,32
   101b8:	8082                	ret

000101ba <mulaa32>:
   101ba:	1101                	addi	sp,sp,-32
   101bc:	ce22                	sw	s0,28(sp)
   101be:	1000                	addi	s0,sp,32
   101c0:	fea42623          	sw	a0,-20(s0)
   101c4:	feb42423          	sw	a1,-24(s0)
   101c8:	fec42223          	sw	a2,-28(s0)
   101cc:	fed42023          	sw	a3,-32(s0)
   101d0:	fec42683          	lw	a3,-20(s0)
   101d4:	8336                	mv	t1,a3
   101d6:	4381                	li	t2,0
   101d8:	fe842683          	lw	a3,-24(s0)
   101dc:	8836                	mv	a6,a3
   101de:	4881                	li	a7,0
   101e0:	03038633          	mul	a2,t2,a6
   101e4:	026886b3          	mul	a3,a7,t1
   101e8:	96b2                	add	a3,a3,a2
   101ea:	03030633          	mul	a2,t1,a6
   101ee:	030337b3          	mulhu	a5,t1,a6
   101f2:	8732                	mv	a4,a2
   101f4:	96be                	add	a3,a3,a5
   101f6:	87b6                	mv	a5,a3
   101f8:	fe442683          	lw	a3,-28(s0)
   101fc:	8f36                	mv	t5,a3
   101fe:	4f81                	li	t6,0
   10200:	01e70633          	add	a2,a4,t5
   10204:	85b2                	mv	a1,a2
   10206:	00e5b5b3          	sltu	a1,a1,a4
   1020a:	01f786b3          	add	a3,a5,t6
   1020e:	00d587b3          	add	a5,a1,a3
   10212:	86be                	mv	a3,a5
   10214:	fe042783          	lw	a5,-32(s0)
   10218:	8e3e                	mv	t3,a5
   1021a:	4e81                	li	t4,0
   1021c:	01c60733          	add	a4,a2,t3
   10220:	85ba                	mv	a1,a4
   10222:	00c5b5b3          	sltu	a1,a1,a2
   10226:	01d687b3          	add	a5,a3,t4
   1022a:	00f586b3          	add	a3,a1,a5
   1022e:	87b6                	mv	a5,a3
   10230:	853a                	mv	a0,a4
   10232:	85be                	mv	a1,a5
   10234:	4472                	lw	s0,28(sp)
   10236:	6105                	addi	sp,sp,32
   10238:	8082                	ret

0001023a <sub_mod>:
   1023a:	7179                	addi	sp,sp,-48
   1023c:	d622                	sw	s0,44(sp)
   1023e:	1800                	addi	s0,sp,48
   10240:	fca42e23          	sw	a0,-36(s0)
   10244:	fcb42c23          	sw	a1,-40(s0)
   10248:	4701                	li	a4,0
   1024a:	4781                	li	a5,0
   1024c:	fee42423          	sw	a4,-24(s0)
   10250:	fef42623          	sw	a5,-20(s0)
   10254:	fe042223          	sw	zero,-28(s0)
   10258:	a851                	j	102ec <sub_mod+0xb2>
   1025a:	fe442783          	lw	a5,-28(s0)
   1025e:	078a                	slli	a5,a5,0x2
   10260:	fd842703          	lw	a4,-40(s0)
   10264:	97ba                	add	a5,a5,a4
   10266:	439c                	lw	a5,0(a5)
   10268:	863e                	mv	a2,a5
   1026a:	4681                	li	a3,0
   1026c:	fdc42703          	lw	a4,-36(s0)
   10270:	fe442783          	lw	a5,-28(s0)
   10274:	078a                	slli	a5,a5,0x2
   10276:	97ba                	add	a5,a5,a4
   10278:	439c                	lw	a5,0(a5)
   1027a:	883e                	mv	a6,a5
   1027c:	4881                	li	a7,0
   1027e:	41060733          	sub	a4,a2,a6
   10282:	85ba                	mv	a1,a4
   10284:	00b635b3          	sltu	a1,a2,a1
   10288:	411687b3          	sub	a5,a3,a7
   1028c:	40b785b3          	sub	a1,a5,a1
   10290:	87ae                	mv	a5,a1
   10292:	853a                	mv	a0,a4
   10294:	85be                	mv	a1,a5
   10296:	fe842303          	lw	t1,-24(s0)
   1029a:	fec42383          	lw	t2,-20(s0)
   1029e:	00650733          	add	a4,a0,t1
   102a2:	8e3a                	mv	t3,a4
   102a4:	00ae3e33          	sltu	t3,t3,a0
   102a8:	007587b3          	add	a5,a1,t2
   102ac:	00fe05b3          	add	a1,t3,a5
   102b0:	87ae                	mv	a5,a1
   102b2:	fee42423          	sw	a4,-24(s0)
   102b6:	fef42623          	sw	a5,-20(s0)
   102ba:	fe442783          	lw	a5,-28(s0)
   102be:	078a                	slli	a5,a5,0x2
   102c0:	fd842703          	lw	a4,-40(s0)
   102c4:	97ba                	add	a5,a5,a4
   102c6:	fe842703          	lw	a4,-24(s0)
   102ca:	c398                	sw	a4,0(a5)
   102cc:	fec42783          	lw	a5,-20(s0)
   102d0:	4007d793          	srai	a5,a5,0x0
   102d4:	fef42423          	sw	a5,-24(s0)
   102d8:	fec42783          	lw	a5,-20(s0)
   102dc:	87fd                	srai	a5,a5,0x1f
   102de:	fef42623          	sw	a5,-20(s0)
   102e2:	fe442783          	lw	a5,-28(s0)
   102e6:	0785                	addi	a5,a5,1
   102e8:	fef42223          	sw	a5,-28(s0)
   102ec:	fe442703          	lw	a4,-28(s0)
   102f0:	05f00793          	li	a5,95
   102f4:	f6e7f3e3          	bgeu	a5,a4,1025a <sub_mod+0x20>
   102f8:	0001                	nop
   102fa:	0001                	nop
   102fc:	5432                	lw	s0,44(sp)
   102fe:	6145                	addi	sp,sp,48
   10300:	8082                	ret

00010302 <ge_mod>:
   10302:	7179                	addi	sp,sp,-48
   10304:	d622                	sw	s0,44(sp)
   10306:	1800                	addi	s0,sp,48
   10308:	fca42e23          	sw	a0,-36(s0)
   1030c:	fcb42c23          	sw	a1,-40(s0)
   10310:	06000793          	li	a5,96
   10314:	fef42623          	sw	a5,-20(s0)
   10318:	a891                	j	1036c <ge_mod+0x6a>
   1031a:	fec42783          	lw	a5,-20(s0)
   1031e:	17fd                	addi	a5,a5,-1
   10320:	fef42623          	sw	a5,-20(s0)
   10324:	fec42783          	lw	a5,-20(s0)
   10328:	078a                	slli	a5,a5,0x2
   1032a:	fd842703          	lw	a4,-40(s0)
   1032e:	97ba                	add	a5,a5,a4
   10330:	4398                	lw	a4,0(a5)
   10332:	fdc42683          	lw	a3,-36(s0)
   10336:	fec42783          	lw	a5,-20(s0)
   1033a:	078a                	slli	a5,a5,0x2
   1033c:	97b6                	add	a5,a5,a3
   1033e:	439c                	lw	a5,0(a5)
   10340:	00f77463          	bgeu	a4,a5,10348 <ge_mod+0x46>
   10344:	4781                	li	a5,0
   10346:	a03d                	j	10374 <ge_mod+0x72>
   10348:	fec42783          	lw	a5,-20(s0)
   1034c:	078a                	slli	a5,a5,0x2
   1034e:	fd842703          	lw	a4,-40(s0)
   10352:	97ba                	add	a5,a5,a4
   10354:	4398                	lw	a4,0(a5)
   10356:	fdc42683          	lw	a3,-36(s0)
   1035a:	fec42783          	lw	a5,-20(s0)
   1035e:	078a                	slli	a5,a5,0x2
   10360:	97b6                	add	a5,a5,a3
   10362:	439c                	lw	a5,0(a5)
   10364:	00e7f463          	bgeu	a5,a4,1036c <ge_mod+0x6a>
   10368:	4785                	li	a5,1
   1036a:	a029                	j	10374 <ge_mod+0x72>
   1036c:	fec42783          	lw	a5,-20(s0)
   10370:	f7cd                	bnez	a5,1031a <ge_mod+0x18>
   10372:	4785                	li	a5,1
   10374:	853e                	mv	a0,a5
   10376:	5432                	lw	s0,44(sp)
   10378:	6145                	addi	sp,sp,48
   1037a:	8082                	ret

0001037c <mont_mul_add>:
   1037c:	711d                	addi	sp,sp,-96
   1037e:	ce86                	sw	ra,92(sp)
   10380:	cca2                	sw	s0,88(sp)
   10382:	caca                	sw	s2,84(sp)
   10384:	c8ce                	sw	s3,80(sp)
   10386:	c6d2                	sw	s4,76(sp)
   10388:	c4d6                	sw	s5,72(sp)
   1038a:	c2da                	sw	s6,68(sp)
   1038c:	c0de                	sw	s7,64(sp)
   1038e:	de62                	sw	s8,60(sp)
   10390:	dc66                	sw	s9,56(sp)
   10392:	da6a                	sw	s10,52(sp)
   10394:	d86e                	sw	s11,48(sp)
   10396:	1080                	addi	s0,sp,96
   10398:	faa42623          	sw	a0,-84(s0)
   1039c:	fab42423          	sw	a1,-88(s0)
   103a0:	fac42223          	sw	a2,-92(s0)
   103a4:	fad42023          	sw	a3,-96(s0)
   103a8:	fa042783          	lw	a5,-96(s0)
   103ac:	4398                	lw	a4,0(a5)
   103ae:	fa842783          	lw	a5,-88(s0)
   103b2:	439c                	lw	a5,0(a5)
   103b4:	863e                	mv	a2,a5
   103b6:	85ba                	mv	a1,a4
   103b8:	fa442503          	lw	a0,-92(s0)
   103bc:	3b69                	jal	10156 <mula32>
   103be:	fca42423          	sw	a0,-56(s0)
   103c2:	fcb42623          	sw	a1,-52(s0)
   103c6:	fc842703          	lw	a4,-56(s0)
   103ca:	fac42783          	lw	a5,-84(s0)
   103ce:	3007a783          	lw	a5,768(a5)
   103d2:	02f707b3          	mul	a5,a4,a5
   103d6:	faf42c23          	sw	a5,-72(s0)
   103da:	fac42783          	lw	a5,-84(s0)
   103de:	439c                	lw	a5,0(a5)
   103e0:	fc842703          	lw	a4,-56(s0)
   103e4:	863a                	mv	a2,a4
   103e6:	85be                	mv	a1,a5
   103e8:	fb842503          	lw	a0,-72(s0)
   103ec:	33ad                	jal	10156 <mula32>
   103ee:	fca42023          	sw	a0,-64(s0)
   103f2:	fcb42223          	sw	a1,-60(s0)
   103f6:	4785                	li	a5,1
   103f8:	faf42e23          	sw	a5,-68(s0)
   103fc:	a841                	j	1048c <mont_mul_add+0x110>
   103fe:	fbc42783          	lw	a5,-68(s0)
   10402:	078a                	slli	a5,a5,0x2
   10404:	fa042703          	lw	a4,-96(s0)
   10408:	97ba                	add	a5,a5,a4
   1040a:	438c                	lw	a1,0(a5)
   1040c:	fbc42783          	lw	a5,-68(s0)
   10410:	078a                	slli	a5,a5,0x2
   10412:	fa842703          	lw	a4,-88(s0)
   10416:	97ba                	add	a5,a5,a4
   10418:	4398                	lw	a4,0(a5)
   1041a:	fcc42783          	lw	a5,-52(s0)
   1041e:	0007dc13          	srli	s8,a5,0x0
   10422:	4c81                	li	s9,0
   10424:	87e2                	mv	a5,s8
   10426:	86be                	mv	a3,a5
   10428:	863a                	mv	a2,a4
   1042a:	fa442503          	lw	a0,-92(s0)
   1042e:	3371                	jal	101ba <mulaa32>
   10430:	fca42423          	sw	a0,-56(s0)
   10434:	fcb42623          	sw	a1,-52(s0)
   10438:	fac42703          	lw	a4,-84(s0)
   1043c:	fbc42783          	lw	a5,-68(s0)
   10440:	078a                	slli	a5,a5,0x2
   10442:	97ba                	add	a5,a5,a4
   10444:	4398                	lw	a4,0(a5)
   10446:	fc842603          	lw	a2,-56(s0)
   1044a:	fc442783          	lw	a5,-60(s0)
   1044e:	0007dd13          	srli	s10,a5,0x0
   10452:	4d81                	li	s11,0
   10454:	87ea                	mv	a5,s10
   10456:	86be                	mv	a3,a5
   10458:	85ba                	mv	a1,a4
   1045a:	fb842503          	lw	a0,-72(s0)
   1045e:	3bb1                	jal	101ba <mulaa32>
   10460:	fca42023          	sw	a0,-64(s0)
   10464:	fcb42223          	sw	a1,-60(s0)
   10468:	fbc42703          	lw	a4,-68(s0)
   1046c:	400007b7          	lui	a5,0x40000
   10470:	17fd                	addi	a5,a5,-1
   10472:	97ba                	add	a5,a5,a4
   10474:	078a                	slli	a5,a5,0x2
   10476:	fa842703          	lw	a4,-88(s0)
   1047a:	97ba                	add	a5,a5,a4
   1047c:	fc042703          	lw	a4,-64(s0)
   10480:	c398                	sw	a4,0(a5)
   10482:	fbc42783          	lw	a5,-68(s0)
   10486:	0785                	addi	a5,a5,1
   10488:	faf42e23          	sw	a5,-68(s0)
   1048c:	fbc42703          	lw	a4,-68(s0)
   10490:	05f00793          	li	a5,95
   10494:	f6e7f5e3          	bgeu	a5,a4,103fe <mont_mul_add+0x82>
   10498:	fcc42783          	lw	a5,-52(s0)
   1049c:	0007d913          	srli	s2,a5,0x0
   104a0:	4981                	li	s3,0
   104a2:	fc442783          	lw	a5,-60(s0)
   104a6:	0007da13          	srli	s4,a5,0x0
   104aa:	4a81                	li	s5,0
   104ac:	01490733          	add	a4,s2,s4
   104b0:	86ba                	mv	a3,a4
   104b2:	0126b6b3          	sltu	a3,a3,s2
   104b6:	015987b3          	add	a5,s3,s5
   104ba:	96be                	add	a3,a3,a5
   104bc:	87b6                	mv	a5,a3
   104be:	fce42423          	sw	a4,-56(s0)
   104c2:	fcf42623          	sw	a5,-52(s0)
   104c6:	fbc42703          	lw	a4,-68(s0)
   104ca:	400007b7          	lui	a5,0x40000
   104ce:	17fd                	addi	a5,a5,-1
   104d0:	97ba                	add	a5,a5,a4
   104d2:	078a                	slli	a5,a5,0x2
   104d4:	fa842703          	lw	a4,-88(s0)
   104d8:	97ba                	add	a5,a5,a4
   104da:	fc842703          	lw	a4,-56(s0)
   104de:	c398                	sw	a4,0(a5)
   104e0:	fcc42783          	lw	a5,-52(s0)
   104e4:	0007db13          	srli	s6,a5,0x0
   104e8:	4b81                	li	s7,0
   104ea:	87da                	mv	a5,s6
   104ec:	0177e7b3          	or	a5,a5,s7
   104f0:	c791                	beqz	a5,104fc <mont_mul_add+0x180>
   104f2:	fa842583          	lw	a1,-88(s0)
   104f6:	fac42503          	lw	a0,-84(s0)
   104fa:	3381                	jal	1023a <sub_mod>
   104fc:	0001                	nop
   104fe:	40f6                	lw	ra,92(sp)
   10500:	4466                	lw	s0,88(sp)
   10502:	4956                	lw	s2,84(sp)
   10504:	49c6                	lw	s3,80(sp)
   10506:	4a36                	lw	s4,76(sp)
   10508:	4aa6                	lw	s5,72(sp)
   1050a:	4b16                	lw	s6,68(sp)
   1050c:	4b86                	lw	s7,64(sp)
   1050e:	5c72                	lw	s8,60(sp)
   10510:	5ce2                	lw	s9,56(sp)
   10512:	5d52                	lw	s10,52(sp)
   10514:	5dc2                	lw	s11,48(sp)
   10516:	6125                	addi	sp,sp,96
   10518:	8082                	ret

0001051a <mont_mul>:
   1051a:	7179                	addi	sp,sp,-48
   1051c:	d606                	sw	ra,44(sp)
   1051e:	d422                	sw	s0,40(sp)
   10520:	1800                	addi	s0,sp,48
   10522:	fca42e23          	sw	a0,-36(s0)
   10526:	fcb42c23          	sw	a1,-40(s0)
   1052a:	fcc42a23          	sw	a2,-44(s0)
   1052e:	fcd42823          	sw	a3,-48(s0)
   10532:	fe042623          	sw	zero,-20(s0)
   10536:	a831                	j	10552 <mont_mul+0x38>
   10538:	fec42783          	lw	a5,-20(s0)
   1053c:	078a                	slli	a5,a5,0x2
   1053e:	fd842703          	lw	a4,-40(s0)
   10542:	97ba                	add	a5,a5,a4
   10544:	0007a023          	sw	zero,0(a5) # 40000000 <__BSS_END__+0x3ffee718>
   10548:	fec42783          	lw	a5,-20(s0)
   1054c:	0785                	addi	a5,a5,1
   1054e:	fef42623          	sw	a5,-20(s0)
   10552:	fec42703          	lw	a4,-20(s0)
   10556:	05f00793          	li	a5,95
   1055a:	fce7ffe3          	bgeu	a5,a4,10538 <mont_mul+0x1e>
   1055e:	fe042623          	sw	zero,-20(s0)
   10562:	a02d                	j	1058c <mont_mul+0x72>
   10564:	fec42783          	lw	a5,-20(s0)
   10568:	078a                	slli	a5,a5,0x2
   1056a:	fd442703          	lw	a4,-44(s0)
   1056e:	97ba                	add	a5,a5,a4
   10570:	439c                	lw	a5,0(a5)
   10572:	fd042683          	lw	a3,-48(s0)
   10576:	863e                	mv	a2,a5
   10578:	fd842583          	lw	a1,-40(s0)
   1057c:	fdc42503          	lw	a0,-36(s0)
   10580:	3bf5                	jal	1037c <mont_mul_add>
   10582:	fec42783          	lw	a5,-20(s0)
   10586:	0785                	addi	a5,a5,1
   10588:	fef42623          	sw	a5,-20(s0)
   1058c:	fec42703          	lw	a4,-20(s0)
   10590:	05f00793          	li	a5,95
   10594:	fce7f8e3          	bgeu	a5,a4,10564 <mont_mul+0x4a>
   10598:	0001                	nop
   1059a:	0001                	nop
   1059c:	50b2                	lw	ra,44(sp)
   1059e:	5422                	lw	s0,40(sp)
   105a0:	6145                	addi	sp,sp,48
   105a2:	8082                	ret

000105a4 <mod_pow>:
   105a4:	7179                	addi	sp,sp,-48
   105a6:	d606                	sw	ra,44(sp)
   105a8:	d422                	sw	s0,40(sp)
   105aa:	1800                	addi	s0,sp,48
   105ac:	fca42e23          	sw	a0,-36(s0)
   105b0:	fcb42c23          	sw	a1,-40(s0)
   105b4:	fcc42a23          	sw	a2,-44(s0)
   105b8:	fcd42823          	sw	a3,-48(s0)
   105bc:	fd042783          	lw	a5,-48(s0)
   105c0:	fef42423          	sw	a5,-24(s0)
   105c4:	fe842783          	lw	a5,-24(s0)
   105c8:	18078793          	addi	a5,a5,384
   105cc:	fef42223          	sw	a5,-28(s0)
   105d0:	fdc42783          	lw	a5,-36(s0)
   105d4:	18078793          	addi	a5,a5,384
   105d8:	86be                	mv	a3,a5
   105da:	fd842603          	lw	a2,-40(s0)
   105de:	fe842583          	lw	a1,-24(s0)
   105e2:	fdc42503          	lw	a0,-36(s0)
   105e6:	3f15                	jal	1051a <mont_mul>
   105e8:	fe042623          	sw	zero,-20(s0)
   105ec:	a805                	j	1061c <mod_pow+0x78>
   105ee:	fe842683          	lw	a3,-24(s0)
   105f2:	fe842603          	lw	a2,-24(s0)
   105f6:	fe442583          	lw	a1,-28(s0)
   105fa:	fdc42503          	lw	a0,-36(s0)
   105fe:	3f31                	jal	1051a <mont_mul>
   10600:	fe442683          	lw	a3,-28(s0)
   10604:	fe442603          	lw	a2,-28(s0)
   10608:	fe842583          	lw	a1,-24(s0)
   1060c:	fdc42503          	lw	a0,-36(s0)
   10610:	3729                	jal	1051a <mont_mul>
   10612:	fec42783          	lw	a5,-20(s0)
   10616:	0789                	addi	a5,a5,2
   10618:	fef42623          	sw	a5,-20(s0)
   1061c:	fec42703          	lw	a4,-20(s0)
   10620:	47bd                	li	a5,15
   10622:	fce7d6e3          	bge	a5,a4,105ee <mod_pow+0x4a>
   10626:	fd842683          	lw	a3,-40(s0)
   1062a:	fe842603          	lw	a2,-24(s0)
   1062e:	fd442583          	lw	a1,-44(s0)
   10632:	fdc42503          	lw	a0,-36(s0)
   10636:	35d5                	jal	1051a <mont_mul>
   10638:	fd442583          	lw	a1,-44(s0)
   1063c:	fdc42503          	lw	a0,-36(s0)
   10640:	31c9                	jal	10302 <ge_mod>
   10642:	87aa                	mv	a5,a0
   10644:	c791                	beqz	a5,10650 <mod_pow+0xac>
   10646:	fd442583          	lw	a1,-44(s0)
   1064a:	fdc42503          	lw	a0,-36(s0)
   1064e:	36f5                	jal	1023a <sub_mod>
   10650:	0001                	nop
   10652:	50b2                	lw	ra,44(sp)
   10654:	5422                	lw	s0,40(sp)
   10656:	6145                	addi	sp,sp,48
   10658:	8082                	ret

0001065a <main>:
   1065a:	b6010113          	addi	sp,sp,-1184
   1065e:	48112e23          	sw	ra,1180(sp)
   10662:	48812c23          	sw	s0,1176(sp)
   10666:	4a010413          	addi	s0,sp,1184
   1066a:	cec40713          	addi	a4,s0,-788
   1066e:	b6c40793          	addi	a5,s0,-1172
   10672:	86ba                	mv	a3,a4
   10674:	863e                	mv	a2,a5
   10676:	b0418593          	addi	a1,gp,-1276 # 11314 <sig>
   1067a:	67c5                	lui	a5,0x11
   1067c:	01078513          	addi	a0,a5,16 # 11010 <mykey>
   10680:	3715                	jal	105a4 <mod_pow>
   10682:	fe042623          	sw	zero,-20(s0)
   10686:	a031                	j	10692 <main+0x38>
   10688:	fec42783          	lw	a5,-20(s0)
   1068c:	0785                	addi	a5,a5,1
   1068e:	fef42623          	sw	a5,-20(s0)
   10692:	fec42703          	lw	a4,-20(s0)
   10696:	05f00793          	li	a5,95
   1069a:	fee7d7e3          	bge	a5,a4,10688 <main+0x2e>
   1069e:	4781                	li	a5,0
   106a0:	853e                	mv	a0,a5
   106a2:	49c12083          	lw	ra,1180(sp)
   106a6:	49812403          	lw	s0,1176(sp)
   106aa:	4a010113          	addi	sp,sp,1184
   106ae:	8082                	ret

000106b0 <exit>:
   106b0:	1141                	addi	sp,sp,-16
   106b2:	4581                	li	a1,0
   106b4:	c422                	sw	s0,8(sp)
   106b6:	c606                	sw	ra,12(sp)
   106b8:	842a                	mv	s0,a0
   106ba:	220d                	jal	107dc <__call_exitprocs>
   106bc:	0b01a503          	lw	a0,176(gp) # 118c0 <_global_impure_ptr>
   106c0:	5d5c                	lw	a5,60(a0)
   106c2:	c391                	beqz	a5,106c6 <exit+0x16>
   106c4:	9782                	jalr	a5
   106c6:	8522                	mv	a0,s0
   106c8:	2441                	jal	10948 <_exit>

000106ca <__libc_init_array>:
   106ca:	1141                	addi	sp,sp,-16
   106cc:	c422                	sw	s0,8(sp)
   106ce:	c04a                	sw	s2,0(sp)
   106d0:	00001417          	auipc	s0,0x1
   106d4:	93440413          	addi	s0,s0,-1740 # 11004 <__init_array_start>
   106d8:	00001917          	auipc	s2,0x1
   106dc:	92c90913          	addi	s2,s2,-1748 # 11004 <__init_array_start>
   106e0:	40890933          	sub	s2,s2,s0
   106e4:	c606                	sw	ra,12(sp)
   106e6:	c226                	sw	s1,4(sp)
   106e8:	40295913          	srai	s2,s2,0x2
   106ec:	00090963          	beqz	s2,106fe <__libc_init_array+0x34>
   106f0:	4481                	li	s1,0
   106f2:	401c                	lw	a5,0(s0)
   106f4:	0485                	addi	s1,s1,1
   106f6:	0411                	addi	s0,s0,4
   106f8:	9782                	jalr	a5
   106fa:	fe991ce3          	bne	s2,s1,106f2 <__libc_init_array+0x28>
   106fe:	00001417          	auipc	s0,0x1
   10702:	90640413          	addi	s0,s0,-1786 # 11004 <__init_array_start>
   10706:	00001917          	auipc	s2,0x1
   1070a:	90690913          	addi	s2,s2,-1786 # 1100c <__do_global_dtors_aux_fini_array_entry>
   1070e:	40890933          	sub	s2,s2,s0
   10712:	40295913          	srai	s2,s2,0x2
   10716:	00090963          	beqz	s2,10728 <__libc_init_array+0x5e>
   1071a:	4481                	li	s1,0
   1071c:	401c                	lw	a5,0(s0)
   1071e:	0485                	addi	s1,s1,1
   10720:	0411                	addi	s0,s0,4
   10722:	9782                	jalr	a5
   10724:	fe991ce3          	bne	s2,s1,1071c <__libc_init_array+0x52>
   10728:	40b2                	lw	ra,12(sp)
   1072a:	4422                	lw	s0,8(sp)
   1072c:	4492                	lw	s1,4(sp)
   1072e:	4902                	lw	s2,0(sp)
   10730:	0141                	addi	sp,sp,16
   10732:	8082                	ret

00010734 <memset>:
   10734:	433d                	li	t1,15
   10736:	872a                	mv	a4,a0
   10738:	02c37363          	bgeu	t1,a2,1075e <memset+0x2a>
   1073c:	00f77793          	andi	a5,a4,15
   10740:	efbd                	bnez	a5,107be <memset+0x8a>
   10742:	e5ad                	bnez	a1,107ac <memset+0x78>
   10744:	ff067693          	andi	a3,a2,-16
   10748:	8a3d                	andi	a2,a2,15
   1074a:	96ba                	add	a3,a3,a4
   1074c:	c30c                	sw	a1,0(a4)
   1074e:	c34c                	sw	a1,4(a4)
   10750:	c70c                	sw	a1,8(a4)
   10752:	c74c                	sw	a1,12(a4)
   10754:	0741                	addi	a4,a4,16
   10756:	fed76be3          	bltu	a4,a3,1074c <memset+0x18>
   1075a:	e211                	bnez	a2,1075e <memset+0x2a>
   1075c:	8082                	ret
   1075e:	40c306b3          	sub	a3,t1,a2
   10762:	068a                	slli	a3,a3,0x2
   10764:	00000297          	auipc	t0,0x0
   10768:	9696                	add	a3,a3,t0
   1076a:	00a68067          	jr	10(a3)
   1076e:	00b70723          	sb	a1,14(a4)
   10772:	00b706a3          	sb	a1,13(a4)
   10776:	00b70623          	sb	a1,12(a4)
   1077a:	00b705a3          	sb	a1,11(a4)
   1077e:	00b70523          	sb	a1,10(a4)
   10782:	00b704a3          	sb	a1,9(a4)
   10786:	00b70423          	sb	a1,8(a4)
   1078a:	00b703a3          	sb	a1,7(a4)
   1078e:	00b70323          	sb	a1,6(a4)
   10792:	00b702a3          	sb	a1,5(a4)
   10796:	00b70223          	sb	a1,4(a4)
   1079a:	00b701a3          	sb	a1,3(a4)
   1079e:	00b70123          	sb	a1,2(a4)
   107a2:	00b700a3          	sb	a1,1(a4)
   107a6:	00b70023          	sb	a1,0(a4)
   107aa:	8082                	ret
   107ac:	0ff5f593          	andi	a1,a1,255
   107b0:	00859693          	slli	a3,a1,0x8
   107b4:	8dd5                	or	a1,a1,a3
   107b6:	01059693          	slli	a3,a1,0x10
   107ba:	8dd5                	or	a1,a1,a3
   107bc:	b761                	j	10744 <memset+0x10>
   107be:	00279693          	slli	a3,a5,0x2
   107c2:	00000297          	auipc	t0,0x0
   107c6:	9696                	add	a3,a3,t0
   107c8:	8286                	mv	t0,ra
   107ca:	fa8680e7          	jalr	-88(a3)
   107ce:	8096                	mv	ra,t0
   107d0:	17c1                	addi	a5,a5,-16
   107d2:	8f1d                	sub	a4,a4,a5
   107d4:	963e                	add	a2,a2,a5
   107d6:	f8c374e3          	bgeu	t1,a2,1075e <memset+0x2a>
   107da:	b7a5                	j	10742 <memset+0xe>

000107dc <__call_exitprocs>:
   107dc:	7179                	addi	sp,sp,-48
   107de:	cc52                	sw	s4,24(sp)
   107e0:	0b01aa03          	lw	s4,176(gp) # 118c0 <_global_impure_ptr>
   107e4:	d04a                	sw	s2,32(sp)
   107e6:	148a2903          	lw	s2,328(s4)
   107ea:	d606                	sw	ra,44(sp)
   107ec:	d422                	sw	s0,40(sp)
   107ee:	d226                	sw	s1,36(sp)
   107f0:	ce4e                	sw	s3,28(sp)
   107f2:	ca56                	sw	s5,20(sp)
   107f4:	c85a                	sw	s6,16(sp)
   107f6:	c65e                	sw	s7,12(sp)
   107f8:	c462                	sw	s8,8(sp)
   107fa:	02090863          	beqz	s2,1082a <__call_exitprocs+0x4e>
   107fe:	8b2a                	mv	s6,a0
   10800:	8bae                	mv	s7,a1
   10802:	4a85                	li	s5,1
   10804:	59fd                	li	s3,-1
   10806:	00492483          	lw	s1,4(s2)
   1080a:	fff48413          	addi	s0,s1,-1
   1080e:	00044e63          	bltz	s0,1082a <__call_exitprocs+0x4e>
   10812:	048a                	slli	s1,s1,0x2
   10814:	94ca                	add	s1,s1,s2
   10816:	020b8663          	beqz	s7,10842 <__call_exitprocs+0x66>
   1081a:	1044a783          	lw	a5,260(s1)
   1081e:	03778263          	beq	a5,s7,10842 <__call_exitprocs+0x66>
   10822:	147d                	addi	s0,s0,-1
   10824:	14f1                	addi	s1,s1,-4
   10826:	ff3418e3          	bne	s0,s3,10816 <__call_exitprocs+0x3a>
   1082a:	50b2                	lw	ra,44(sp)
   1082c:	5422                	lw	s0,40(sp)
   1082e:	5492                	lw	s1,36(sp)
   10830:	5902                	lw	s2,32(sp)
   10832:	49f2                	lw	s3,28(sp)
   10834:	4a62                	lw	s4,24(sp)
   10836:	4ad2                	lw	s5,20(sp)
   10838:	4b42                	lw	s6,16(sp)
   1083a:	4bb2                	lw	s7,12(sp)
   1083c:	4c22                	lw	s8,8(sp)
   1083e:	6145                	addi	sp,sp,48
   10840:	8082                	ret
   10842:	00492783          	lw	a5,4(s2)
   10846:	40d4                	lw	a3,4(s1)
   10848:	17fd                	addi	a5,a5,-1
   1084a:	04878263          	beq	a5,s0,1088e <__call_exitprocs+0xb2>
   1084e:	0004a223          	sw	zero,4(s1)
   10852:	dae1                	beqz	a3,10822 <__call_exitprocs+0x46>
   10854:	18892783          	lw	a5,392(s2)
   10858:	008a9733          	sll	a4,s5,s0
   1085c:	00492c03          	lw	s8,4(s2)
   10860:	8ff9                	and	a5,a5,a4
   10862:	ef89                	bnez	a5,1087c <__call_exitprocs+0xa0>
   10864:	9682                	jalr	a3
   10866:	00492703          	lw	a4,4(s2)
   1086a:	148a2783          	lw	a5,328(s4)
   1086e:	01871463          	bne	a4,s8,10876 <__call_exitprocs+0x9a>
   10872:	fb2788e3          	beq	a5,s2,10822 <__call_exitprocs+0x46>
   10876:	dbd5                	beqz	a5,1082a <__call_exitprocs+0x4e>
   10878:	893e                	mv	s2,a5
   1087a:	b771                	j	10806 <__call_exitprocs+0x2a>
   1087c:	18c92783          	lw	a5,396(s2)
   10880:	0844a583          	lw	a1,132(s1)
   10884:	8f7d                	and	a4,a4,a5
   10886:	e719                	bnez	a4,10894 <__call_exitprocs+0xb8>
   10888:	855a                	mv	a0,s6
   1088a:	9682                	jalr	a3
   1088c:	bfe9                	j	10866 <__call_exitprocs+0x8a>
   1088e:	00892223          	sw	s0,4(s2)
   10892:	b7c1                	j	10852 <__call_exitprocs+0x76>
   10894:	852e                	mv	a0,a1
   10896:	9682                	jalr	a3
   10898:	b7f9                	j	10866 <__call_exitprocs+0x8a>

0001089a <__libc_fini_array>:
   1089a:	1141                	addi	sp,sp,-16
   1089c:	c422                	sw	s0,8(sp)
   1089e:	00000797          	auipc	a5,0x0
   108a2:	77278793          	addi	a5,a5,1906 # 11010 <mykey>
   108a6:	00000417          	auipc	s0,0x0
   108aa:	76640413          	addi	s0,s0,1894 # 1100c <__do_global_dtors_aux_fini_array_entry>
   108ae:	8f81                	sub	a5,a5,s0
   108b0:	c226                	sw	s1,4(sp)
   108b2:	c606                	sw	ra,12(sp)
   108b4:	4027d493          	srai	s1,a5,0x2
   108b8:	c881                	beqz	s1,108c8 <__libc_fini_array+0x2e>
   108ba:	17f1                	addi	a5,a5,-4
   108bc:	943e                	add	s0,s0,a5
   108be:	401c                	lw	a5,0(s0)
   108c0:	14fd                	addi	s1,s1,-1
   108c2:	1471                	addi	s0,s0,-4
   108c4:	9782                	jalr	a5
   108c6:	fce5                	bnez	s1,108be <__libc_fini_array+0x24>
   108c8:	40b2                	lw	ra,12(sp)
   108ca:	4422                	lw	s0,8(sp)
   108cc:	4492                	lw	s1,4(sp)
   108ce:	0141                	addi	sp,sp,16
   108d0:	8082                	ret

000108d2 <atexit>:
   108d2:	85aa                	mv	a1,a0
   108d4:	4681                	li	a3,0
   108d6:	4601                	li	a2,0
   108d8:	4501                	li	a0,0
   108da:	a009                	j	108dc <__register_exitproc>

000108dc <__register_exitproc>:
   108dc:	0b01a703          	lw	a4,176(gp) # 118c0 <_global_impure_ptr>
   108e0:	14872783          	lw	a5,328(a4)
   108e4:	c3a1                	beqz	a5,10924 <__register_exitproc+0x48>
   108e6:	43d8                	lw	a4,4(a5)
   108e8:	487d                	li	a6,31
   108ea:	04e84d63          	blt	a6,a4,10944 <__register_exitproc+0x68>
   108ee:	00271813          	slli	a6,a4,0x2
   108f2:	c11d                	beqz	a0,10918 <__register_exitproc+0x3c>
   108f4:	01078333          	add	t1,a5,a6
   108f8:	08c32423          	sw	a2,136(t1) # 1018e <mula32+0x38>
   108fc:	1887a883          	lw	a7,392(a5)
   10900:	4605                	li	a2,1
   10902:	00e61633          	sll	a2,a2,a4
   10906:	00c8e8b3          	or	a7,a7,a2
   1090a:	1917a423          	sw	a7,392(a5)
   1090e:	10d32423          	sw	a3,264(t1)
   10912:	4689                	li	a3,2
   10914:	00d50d63          	beq	a0,a3,1092e <__register_exitproc+0x52>
   10918:	0705                	addi	a4,a4,1
   1091a:	c3d8                	sw	a4,4(a5)
   1091c:	97c2                	add	a5,a5,a6
   1091e:	c78c                	sw	a1,8(a5)
   10920:	4501                	li	a0,0
   10922:	8082                	ret
   10924:	14c70793          	addi	a5,a4,332
   10928:	14f72423          	sw	a5,328(a4)
   1092c:	bf6d                	j	108e6 <__register_exitproc+0xa>
   1092e:	18c7a683          	lw	a3,396(a5)
   10932:	0705                	addi	a4,a4,1
   10934:	c3d8                	sw	a4,4(a5)
   10936:	8e55                	or	a2,a2,a3
   10938:	18c7a623          	sw	a2,396(a5)
   1093c:	97c2                	add	a5,a5,a6
   1093e:	c78c                	sw	a1,8(a5)
   10940:	4501                	li	a0,0
   10942:	8082                	ret
   10944:	557d                	li	a0,-1
   10946:	8082                	ret

00010948 <_exit>:
   10948:	05d00893          	li	a7,93
   1094c:	00000073          	ecall
   10950:	00054363          	bltz	a0,10956 <_exit+0xe>
   10954:	a001                	j	10954 <_exit+0xc>
   10956:	1141                	addi	sp,sp,-16
   10958:	c422                	sw	s0,8(sp)
   1095a:	842a                	mv	s0,a0
   1095c:	c606                	sw	ra,12(sp)
   1095e:	40800433          	neg	s0,s0
   10962:	2019                	jal	10968 <__errno>
   10964:	c100                	sw	s0,0(a0)
   10966:	a001                	j	10966 <_exit+0x1e>

00010968 <__errno>:
   10968:	0b81a503          	lw	a0,184(gp) # 118c8 <_impure_ptr>
   1096c:	8082                	ret
