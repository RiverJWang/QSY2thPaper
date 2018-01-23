%% 11
A=zeros(200001,20);

A(:,1)=

for ii=1:20
A(:,ii)=A(:,ii)-mean(A(:,ii))
end;

%% 22 均方根=有效值
tic;
path='D:\D盘桌面\项目\戚所中期项目报告-2018-1-2\振动均值数据';
A=zeros(1,20);
GA=gpuArray(A);
x=dir(path); %文件夹信息；
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x是结构体，并读取字符串，且链接起来。
    data=load(path1);
    data0=gpuArray(data);
    data1=rms(data0-mean(data0));
    GA(:,ii-2)=data1;
end
A=gather(GA);
t=toc;
t

%% 22 均方根=有效值
tic;
path='D:\D盘桌面\项目\戚所中期项目报告-2018-1-2\振动均值数据';
A=zeros(1,20);
x=dir(path); %文件夹信息；
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x是结构体，并读取字符串，且链接起来。
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
path='D:\D盘桌面\项目\戚所中期项目报告-2018-1-2\冲击';
A=zeros(1,20);
GA=gpuArray(A);
x=dir(path); %文件夹信息；
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x是结构体，并读取字符串，且链接起来。
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
path='D:\D盘桌面\项目\戚所中期项目报告-2018-1-2\冲击';
A=zeros(1,20);
x=dir(path); %文件夹信息；
L=length(x);
for ii=3:L
    path1=strcat(path,'\',x(ii).name); %x是结构体，并读取字符串，且链接起来。
    data=load(path1);
    data1=rms(data-mean(data));
    A(:,ii-2)=data1;
end
A
t=toc;
t

