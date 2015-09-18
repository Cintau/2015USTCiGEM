function A=getfc(i)
name=num2str(i);
I=imread(name,'pnm');
G=rgb2gray(I);
G1=medfilt2(G);
[x,y]=size(G1);
r=zeros(1,y);
for m=1:10
    p=G1(y-m+1,:);
    p=double(p);
    r=r+p;
end
[a,b]=size(r);
for m=3:b-2
    r(m,1)=(r(m-2,1)+r(m-1,1)+r(m,1)+r(m+1,1)+r(m+2,1));
end
A=r;