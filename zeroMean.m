%% 11
A=zeros(200001,20);

A(:,1)=

for ii=1:20
A(:,ii)=A(:,ii)-mean(A(:,ii))
end;

%% 22 ������=��Чֵ
tic;
path='D:\D������\��Ŀ\����������Ŀ����-2018-1-2\�񶯾�ֵ����';
A=zeros(1,20);
GA=gpuArray(A);
x=dir(path); %�ļ�����Ϣ��
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x�ǽṹ�壬����ȡ�ַ�����������������
    data=load(path1);
    data0=gpuArray(data);
    data1=rms(data0-mean(data0));
    GA(:,ii-2)=data1;
end
A=gather(GA);
t=toc;
t

%% 22 ������=��Чֵ
tic;
path='D:\D������\��Ŀ\����������Ŀ����-2018-1-2\�񶯾�ֵ����';
A=zeros(1,20);
x=dir(path); %�ļ�����Ϣ��
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x�ǽṹ�壬����ȡ�ַ�����������������
    data=load(path1);
    data1=rms(data-mean(data));
    A(:,ii-2)=data1;
end
A
t=toc;
t


%%
clear all;clc;
tic;
path='D:\D������\��Ŀ\����������Ŀ����-2018-1-2\���';
A=zeros(1,20);
GA=gpuArray(A);
x=dir(path); %�ļ�����Ϣ��
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x�ǽṹ�壬����ȡ�ַ�����������������
    data=load(path1);
    data0=gpuArray(data);
    data1=rms(data0-mean(data0));
    GA(:,ii-2)=data1;
end
A=gather(GA);
t=toc;
t

%%
tic;
path='D:\D������\��Ŀ\����������Ŀ����-2018-1-2\���';
A=zeros(1,20);
x=dir(path); %�ļ�����Ϣ��
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x�ǽṹ�壬����ȡ�ַ�����������������
    data=load(path1);
    data1=rms(data-mean(data));
    A(:,ii-2)=data1;
end
A
t=toc;
t

