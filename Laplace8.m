function z=Laplace8(array)
z_array=-1.*array;
z_array(2,2)=-8*z_array(2,2);
z=sum(sum(z_array));

