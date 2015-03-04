% k nearest neighbours vector style

fprintf(' welcome to the vector style k nearest neighbour module\n');
da=input('please mention the dataset file in single quotes :\n');
d=load(da);
s=size(d);
l=s(1,1);
b=s(1,2);
fprintf('there are %i datapoints with %i dimensions\n',l,b-1);

K=input('how many categories are depicted by your dataset?');
x=d;

group=zeros(1,b-1);
centroids=zeros(b-1,K);
 temp_avg=zeros(b-1,K);
 count=0;
%determining the centroid vector for each class
for j=1:K
for i=1:l
    if x(i,b)==j
         
        temp_avg(:,j)=temp_avg(:,j)+x(i,1:b-1)';
        count=count+1;
        group(1,:)=(1/count).*temp_avg(:,j);
        centroids(:,j)=group;
        
    
    
    
    
    
    
        
    end
end
end

fprintf('the following are the centroids of the %i categories\n',K);
disp(centroids);
test=input('you can now classify new vectors.\n please enter the new vector :');
component=zeros(1,K);
for i=1:K
    component(1,i)=magnitude(test)*cosine(test,centroids(:,i));
end

 [max_value, index] = max(component(:));
 y=index;
 fprintf('the vector that you want to test belongs to category : %i\n;',y); 
