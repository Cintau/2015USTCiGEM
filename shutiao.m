function shutiao(m,n)
name1=num2str(m);
name2=num2str(n);
I1=imread(name1,'pnm');
I2=imread(name2,'pnm');
G1=rgb2gray(I1);
G2=rgb2gray(I2);
G11=medfilt2(G1,[7,7]);G21=medfilt2(G2,[7,7]);
r1=G11(1,:);r2=G21(1,:);
plot(r1,'b:'),hold on,plot(r2,'r');