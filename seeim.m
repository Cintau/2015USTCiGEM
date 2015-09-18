function seeim(i)
name=num2str(i);
I=imread(name,'pnm');
G=rgb2gray(I);
imshow(G);