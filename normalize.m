function z=normalize(x)


s=size(x);
l=s(1,1);
b=s(1,2);
for i=1:b
    for j=1:l
        x(j,i)=((x(j,i)-mean(x(:,i))))/std(x(:,i));
    end
end

z=x;
end
