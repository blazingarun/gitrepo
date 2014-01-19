a=imread('stdSLR.jpg');
b=padarray(a,[1,1]);
c=a;
d=a;
[m,n]=size(a);
array=magic(3);
for i=1:m
    for j=1:n
        %index=1;
       for row=0:2
           for col=0:2
               array(row+1,col+1)=b(i+row,j+col);
               %index=index+1;
           end
       end
       c(i,j)=sobel_H(array);
       d(i,j)=sobel_V(array);
    end
end
subplot(2,1,1),imshow(c);
subplot(2,1,2),imshow(d);