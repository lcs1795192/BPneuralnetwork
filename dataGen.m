x=rand(inputNum,caseNum);%��������
t=ones(1,inputNum)*x/3;%����Ŀ�����t=(x1+x2+x3)/3
v=rand(neuralNum,inputNum);%�����һ��Ȩ����
w=rand(outputNum,neuralNum);%����ڶ���Ȩ����
thre1=rand(neuralNum,1);%�����һ����ֵ
thre2=rand(outputNum,1);%����ڶ�����ֵ
save('data.mat');