function A=getfr(i)
name=num2str(i);
I=imread(name,'pnm');
G=rgb2gray(I);
G1=medfilt2(G);
[x,y]=size(G1);
r=zeros(x,1);
for m=1:20
    p=G1(:,x-m+1);
    p=double(p);
    r=r+p;
end
[a,b]=size(r);
for m=1:b-1
    r(m,1)=(r(m-1,1)+r(m,1)+r(m+1,1));
end
A=r;