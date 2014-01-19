function z=getMedian(array)
[m,n]=size(array);
for i=1:m*n
    newArray=array(i);
end
z=median(newArray);

