num=200;
diff=0.001;
tmpre=zeros(1,num);
sigema=0;
figure;
hold on;
result=zeros(20000000,2);
m=1;
for i=1:(4/diff+1)
    tmpre=zeros(1,num);
    for k=1:4000
        tmpre(1)=rand;
    for j=1:num-1
        tmpre(j+1)=tmpre(j)*sigema*(1-tmpre(j));
    end
    result(m,1)=sigema;
    result(m,2)=tmpre(num);
    m=m+1;
    end
    sigema=sigema+diff;
end
plot(result(1:m,1),result(1:m,2),'.', 'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',0.1)