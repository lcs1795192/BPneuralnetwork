clc;
clear;
close all;

inputNum=3;%�����������
outputNum=1;%�����������
caseNum=1000;%���ݼ�����
neuralNum=20;%���ز���Ԫ����
learningRate=0.85;%ѧϰ��
trainNum=1000;%ѵ��������С�ڵ���caseNum

dataGen;
load ('data.mat');

y=ones(trainNum,1);%ѵ������洢
errorStore=ones(trainNum,1);%���洢
for i=1:trainNum
    loop=1;
    while(loop<=50)
        alpha=v*x(:,i);
        b=sigmoid(alpha-thre1);
        beta=w*b;
        y(i)=sigmoid(beta-thre2);
        
        error=y(i)-t(i);
        errorStore(loop)=error;
        loop=loop+1;
        % fprintf("case=%d loop=%3d  error=%6.4f\n",i,loop,error);
        
        w=w-learningRate*error*y(i)*(1-y(i))*b';
        thre2=thre2+learningRate*error*y(i)*(1-y(i));
        e=error*sigmoid_der(beta-thre2)*w;
        v=v-learningRate*e'*x(:,i)';
        thre1=thre1+learningRate*e';
    end
    %     plot(errorStore);
    %     hold on;
    %pause(0.5);
end
sigmoid(w*sigmoid(v*[0.2;0.2;0.2]-thre1)-thre2)
sigmoid(w*sigmoid(v*[0.3;0.3;0.3]-thre1)-thre2)

