%%multivariate leniar regression
fprintf('welcome to  multivariate linear regression');
fprintf('\n');
data=input('please enter the name of  your data fie in single brackets \n');

d=load(data);
%the data set must have all the begining columns as eatures and the last column as output
%also make sure that all your features are normalized
disp(d);
s=size(d);
l=s(1,1);
fprintf('number of data points = %i',s(1,1));
fprintf('\n');
fprintf('the number of features is = %i',s(1,2)-1);
X=d(:,1:s(1,2)-1);
X=normalize(X);
y=d(:,s(1,2));
%disp(x)
%disp(y)
theta=rand(s(1,2),1);
temp=zeros(s(1,2),1);
fprintf('\n');
alpha=input('please define learning rate');
n=input('define number of iterations');
fprintf('\n');
fprintf('running linear regression...');
x=[ones(s(1,1),1),X];
%disp(x)
%disp(x*theta);
for i=1:n
    
    
    for j=1:s(1,2)
        fprintf('%i',theta(j,1));
        temp(j)=(theta(j)-(alpha*(1/l)*(derivative(x,y,theta,j))))
        theta(j)=temp(j);
        
        
    end
   
end
T=theta;
