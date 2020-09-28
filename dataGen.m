x=rand(inputNum,caseNum);%生成输入
t=ones(1,inputNum)*x/3;%生成目标输出t=(x1+x2+x3)/3
v=rand(neuralNum,inputNum);%随机第一层权函数
w=rand(outputNum,neuralNum);%随机第二层权函数
thre1=rand(neuralNum,1);%随机第一层阈值
thre2=rand(outputNum,1);%随机第二层阈值
save('data.mat');