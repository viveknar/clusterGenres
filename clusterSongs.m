data = load('data.txt');

num_of_clusters = 10;
K = num_of_clusters;

randindx = randperm(size(input,1));

centroids = input(randindx(1:K), :);

st = 0;
for m = 1:9
    st = st+1;
    en = st+999;
    input = data(st:en, :);

    for i = 1:size(input, 1);
        disp(i);
        idx = findClosestCentroid(input, centroids);

        [centroids] = computeCentroids(input, idx, K);
    end

    one=1;two=1;three=1;four=1;five=1;six=1;seven=1;eight=1;nine=1;ten=1;

    for i = 1:size(input, 1)
        switch(idx(i))
            case 1 
                group_1(one,:) =  input(i,:);
                one = one +1;
            case 2
                group_2(two,:) = input(i,:);
                two=two+1;
            case 3
                group_3(three,:) = input(i,:);
                three=three+1;
            case 4
                group_4(four,:) = input(i,:);
                four=four+1;
            case 5
                group_5(five,:) = input(i,:);
                five=five+1;
            case 6
                group_6(six,:) = input(i,:);
                six=six+1;
            case 7
                group_7(seven,:) = input(i,:);
                seven=seven+1;
            case 8
                group_8(eight,:) = input(i,:);
                eight=eight+1;
            case 9
                group_9(nine,:) = input(i,:);
                nine=nine+1;

            otherwise
                group_10(ten,:) = input(i,:);
                ten=ten+1;

        end
    end
    st = st + 1000;
end