function A=mulact(m)
A=zeros(m,1);
for i=1:m
    name1=num2str(i);
    name2=num2str(i+1);
    I1=imread(name1,'jpg');%loading image
    I2=imread(name2,'jpg');
    c=act(I1,I2);
    A(i,1)=c;%print result in am array
end