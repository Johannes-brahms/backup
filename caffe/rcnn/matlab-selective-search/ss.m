
project = '/home/lobo/project/dog-cat-rcnn/data/dog-cat-2/'
train_file = strcat(project, 'Images/trainvals.txt');


train = fopen(train_file,'r');


train_list = {};
count = 1;


while ~feof(train)
    
    
    line = fgets(train);
    line = strcat(project, 'Images/', line, '.jpg');
    train_list{count} = line;
    count = count + 1;
   
    
end;
disp(train_list)
disp('selective search')

selective_search_rcnn(train_list,'dog-cat-2-check-2.mat')
 
disp('done')
 
