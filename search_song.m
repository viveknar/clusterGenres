function [] = search_song(song_id)
load('data.txt');
load('centroids.mat');
load('groups.mat');
load('tags.mat');

song = data(song_id,:);

group_no = findClosestCentroid(song, centroids);

switch(group_no)
    case 1 
        group = group_1;
    case 2 
        group = group_2;
    case 3 
        group = group_3;
    case 4 
        group = group_4;
    case 5 
        group = group_5;
    case 6 
        group = group_6;
    case 7 
        group = group_7;
    case 8 
        group = group_8;
    case 9 
        group = group_9;
    case 10 
        group = group_10;
end
tag = findClosestSongtag(group, song, tags);

fprintf(1,'found from clustering \n---------------\n%s\n', tag{1});
fprintf(1,'\n\nfound from echonest \n------------\n%s\n', tags{song_id});


