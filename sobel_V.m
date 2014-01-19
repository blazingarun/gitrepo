function z=sobel_V(array)
%[m,n]=size(array);
mask=[-1 0 1;-2 0 2;-1 0 1];
pro=0;
for i=1:3
    for j=1:3
        pro=pro+mask(i,j)*array(i,j);
    end
end
z=pro;
