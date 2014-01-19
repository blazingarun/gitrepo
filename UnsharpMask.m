a=imread('moon.tif');
b=padarray(a,[1,1]);
c=a;
e=a;
[m,n]=size(a);
array=magic(3);
for i=1:m
    for j=1:n
       % index=1;
       for row=0:2
           for col=0:2
               array(row+1,col+1)=b(i+row,j+col);
        %       index=index+1;
           end
       end
       c(i,j)=median(median(array));
    end
end
subplot(1,2,1),imshow(c);
d=padarray(c,[1,1]);
for i=1:m
    for j=1:n
       % index=1;
       for row=0:2
           for col=0:2
               array(row+1,col+1)=d(i+row,j+col);
        %       index=index+1;
           end
       end
       e(i,j)=c(i,j)-getAverage(array);
    end
end
subplot(1,2,2),imshow(e);