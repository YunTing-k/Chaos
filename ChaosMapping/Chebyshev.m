clear;
num=200;
diff=0.0001;
tmpre=zeros(1,num);
sigema=-1.52;
figure;
hold on;
result=zeros(20000000,2);
m=1;
for i=1:(0.5/diff+1)
    tmpre=zeros(1,num);
    for k=1:1000
        tmpre(1)=2*rand-1;
    for j=1:num-1
        tmpre(j+1)=cos(sigema*acos(tmpre(j)));
        %tmpre(j+1)=cos(sigema*asin(tmpre(j)));
        %tmpre(j+1)=sin(sigema*asin(tmpre(j)));
    end
    result(m,1)=sigema;
    result(m,2)=tmpre(num);
    m=m+1;
    end
    sigema=sigema+diff;
end
plot(result(1:m,1),result(1:m,2),'.', 'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',0.1)