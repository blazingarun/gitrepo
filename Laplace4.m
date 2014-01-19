function z=Laplace4(array)
center=array(2,2);
for i=1:9
    if mod(i,2)==0
        array(i)=array(i);
    else
        array(i)=0;
    end 
end
array(2,2)=center*-4;
z=sum(sum(array));