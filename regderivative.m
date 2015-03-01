function z=regderivative(x,y,theta,j)


z=0;
for i=1:length(y)
    z=z+(sigmoid(x(i,:)*theta)-y(i))*(x(i,j));
end





end
