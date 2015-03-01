function z=derivative(x,y,theta,j)

z=0;
for i=1:length(y)
    z=z+(x(i,:)*theta-y(i))*(x(i,j));
end





end
