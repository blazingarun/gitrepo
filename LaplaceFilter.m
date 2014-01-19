a=imread('stdSLR.jpg');
b=padarray(a,[1,1]);
c=a;
array=magic(3);
[m,n]=size(a);
for i=1:m
    for j=1:n
        %index=1;
       for row=0:2
           for col=0:2
               array(row+1,col+1)=b(i+row,j+col);
              % index=index+1;
           end
       end
       c(i,j)=Laplace8(array);
       %c(i,j)=Laplace4(array);
    end
end
subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(c);