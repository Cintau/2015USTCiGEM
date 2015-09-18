function N=getpkss(i,j)
B=zeros(j-i+1,1);
for m=i:j
    A=getfr(m);
    [pksa,locsa]=findpeaks(A,'minpeakdistance',3);
    [a,k]=size(pksa);
    B(m-i+1,1)=a;
end
N=B;