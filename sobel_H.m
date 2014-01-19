function z=sobel_H(array)
[m,n]=size(array);
mask=[-1 -2 -1;0 0 0;1 2 1];
pro=0;
for i=1:m
    for j=1:n
        pro=pro+mask(i,j)*array(i,j);
    end
end
z=pro;
