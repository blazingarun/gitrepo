function z= getAverage(array)
[m,n]=size(array);
a=0;
for i=1:m
    for j=1:n
        a=a+array(i,j);
    end
end
z=a/(m*n);
