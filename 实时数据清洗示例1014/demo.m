clear;clc

load sample_data.mat;
load pos.mat;


%n=size(A,1);cleaned_data=nan(n,27);
%[cleaned_data,cleaned_data2]=deal(zeros(n,27));
for i=219001:220000
    data=A(219001:i,:);
    [cleaned_data2(i,:),cleaned_data(i,:)]=pre_process(data,pos);
end

%%

% figure;mesh(A(1001:3000,:));title('original data');
% figure;mesh(cleaned_data(1001:3000,:));title('cleaned data');

[indx,error_data]=find_ideal_sinter_convex(cleaned_data);
disp(sum(indx<5))
[indx2,error_data2]=find_ideal_sinter_convex(cleaned_data2);
disp(sum(indx2<5))

figure;mesh(cleaned_data2)

wrong_data_0=zeros(n,1);
for i=1:n
    if min(A(i,:))<0
        wrong_data_0(i)=1;
    end
    if max(A(i,:))>550
        wrong_data_0(i)=2;
    end
end
figure;mesh(cleaned_data2(wrong_data_0,:));
