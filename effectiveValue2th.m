%%
clear all;clc;
%% load data；
N=zeros(5,11);%正常振动幅值的5*11矩阵，5是对应每个速度工况；11对应各个采集通道；
vib1NormHori=[7.853
3.73
2.3027
2.0667
0.93725

];
N(:,1)=vib1NormHori;
vib1NormVerti=[9.0074
8.2596
4.9609
2.8693
1.937
];
N(:,2)=vib1NormVerti;
vib2NormLongi=[19
11
5.3162
5.3639
2.1389
];
N(:,3)=vib2NormLongi;
vib2NormHori=[2.1206
2.0402
1.4874
1.4993
0.87928

];
N(:,4)=vib2NormHori;
vib3NormVerti=[16
12
8.9668
6.8132
2.4718

];
N(:,5)=vib3NormVerti;
vib3NormHori=[4.6975
5.1171
5.5751
2.7267
2.1912

];
N(:,6)=vib3NormHori;
vib4NormLongi=[6.1774
5.7915
1.7695
1.5379
1.2355

];
N(:,7)=vib4NormLongi;
vib4NormHori=[22
18
5.795
7.4112
1.9025

];
N(:,8)=vib4NormHori;
shoc1Norm=[0.008987
0.6295
0.209
1.658
4.338

];
N(:,9)=shoc1Norm;
N(:,10)=shoc1Norm;
N(:,11)=shoc1Norm;

kNormal=N;

%%  data of test
A=zeros(5,4,11);%数据采集矩阵，5对应每个速度工况；4是对应每个故障情况：滚、外、复合、外补；11是对应每个通道；

v1H=[2.832	4.737	4.853	3.308
1.128	2.182	1.618	2.123
1.669	1.125	0.600	7.093
1.185	1.194	0.677	1.711
1.985	0.5	0.645	1.484
];
A(:,:,1)=v1H;

v1V=[5.912	22.62	4.853	3.308
3.263	2.182	1.618	2.123
3.831	1.125	0.600	7.093
1.851	1.194	0.677	1.711
3.324	0.45	0.645	1.484
];
A(:,:,2)=v1V;

v2L=[6.000	22.62	6.301	15.65
4.434	20.35	5.382	1.409
6.438	3.862	2.886	14.06
1.185	3.044	2.936	3.214
2.858	1.166	0.892	3.109
];
A(:,:,3)=v2L;

v2H=[1.255	19.95	3.908	5.902
1.945	21.51	5.818	1.409
2.549	4.209	2.886	2.452
1.185	3.044	2.936	1.519
2	0.73	0.892	2.305
];
A(:,:,4)=v2H;

v3V=[10.040	62.08	11.300	22.92
4.466	85.16	12.97	5.475
7.826	60.75	5.219	8.641
3.988	22.02	15.01	5.133
2	1.405	2.535	2.425
];
A(:,:,5)=v3V;

v3H=[3.070	19.95	11.840	16.68
4.913	47.85	12.240	2.421
7.443	53.91	5.219	5.698
3.988	22.02	15.01	5.133
2	1.405	2.535	1.753
];
A(:,:,6)=v3H;

v4L=[5.120 	13.74	6.021	1.707
3.146	4.401	1.665	4.164
4.738	1.308	1.111	5.134
3.012	1.194	1.352	2.995
3.661	1.1	1.304	1.741
];
A(:,:,7)=v3H;

v4H=[1.048	183.5	12.050	3.919
3.360	4.401	4.843	3.606
4.613	2.552	2.442	5.134
7.120	1.194	3.239	2.995
2	1.1	1.253	1.741
];
A(:,:,8)=v4H;

s1=[0.82		0.974		1.422		0.511
2.53		14.75		6.482		2.613
8.01		74.14		23.3		0.936
20.22		600.3		31.56		7.495
107.1		54.93		50.14		6.522
];
A(:,:,9)=s1;

s2=[0.301		2.556		46.37		0.637	
12.59		142.7		169.5		1.693	
18.94		95.63		376.2		1.695	
71.74		130.2		523.6		9.806	
297.2		48.32		499.5		15.82	
];
A(:,:,10)=s2;

s3=[0.443		2.625		3.995		0.159	
11.22		148.5		10.3		0.391	
17.63		113.6		67.3		0.943	
72.88		150.3		109.4		1.829	
319.1		685.7		166.9		2.294	
];
A(:,:,11)=s3;
kFault=A;
%%
KN=zeros(5,4,11);%是否有效矩阵，5对应每个速度工况；4是对应每个故障情况：滚、外、复合、外补；11是对应每个通道；

KN(:,:,9)=[1		1		1		1
1		1		1		1
1		1		1		1
1		1		1		1
1		1		1		1
];

KN(:,:,10)=[1		1		1		1
1		1		1		1
1		1		1		1
1		1		1		1
1		1		1		1
];

KN(:,:,11)=[1		1		1		1
1		1		1		1
1		1		1		1
1		1		1		1
1		1		1		1
];

KN(:,:,1)=[1	1	1	1
0	1	1	1
0	1	0	1
0	1	0	0
0	0	0	0
];

KN(:,:,2)=[1	1	1	1
1	1	0	1
0	1	0	1
0	1	0	0
0	0	0	0
];

KN(:,:,3)=[1	1	1	1
1	1	1	1
1	1	1	1
0	1	1	0
0	0	0	0
];

KN(:,:,4)=[1	1	1	1
0	1	1	1
0	1	1	0
0	1	1	0
0	0	0	0
];

KN(:,:,5)=[1	1	1	1
1	1	1	1
1	1	1	1
1	1	1	0
0	0	0	0
];

KN(:,:,6)=[1	1	1	1
0	1	1	0
0	1	1	0
0	1	1	0
0	0	1	0
];

KN(:,:,7)=[1	1	1	1
1	1	1	1
1	1	0	1
0	1	0	0
0	0	0	0
];

KN(:,:,8)=[1	1	1	1
0	1	1	1
0	1	1	1
0	1	1	0
0	0	1	0
];

kNotable=KN;






%% test
R=zeros(11,4);

for i=1:11;
R(i,:)=mean(80*(A(:,:,i)-repmat(N(:,i),1,4))./A(:,:,i)+20*KN(:,:,i));
end
R

%% invalid

kNormal=[0.0005458
0.05965
0.04632
0.01015
0.05534
];

kFault=[0.820
2.53
8.01
20.22
107.1
];
kNotable=[1,1,1,1,1]';

mean(((80*(kFault-kNormal))./kFault)+20*kNotable)

%% invalid

kNormal=[0.0005458
0.05965
0.04632
0.01015
0.05534
];

kFault=[0.820
2.53
8.01
20.22
107.1
];
kNotable=[1,1,1,1,1]';

mean(((80*(kFault-kNormal))./kFault)+20*kNotable)
















