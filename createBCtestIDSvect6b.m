function [mkImages, mkDataSetFolders] = createBCtestIDSvect6b(dataFolderTmpl, dataFolderSfx, readFcn)

%% Create a real folder
dataFolder = strrep(dataFolderTmpl, 'Sfx', dataFolderSfx);


%% Create vectors of the makeup folder templates and category labels

% Empty vectors
mkDataSetFolders = strings(0);
mkLabels = strings(0);

% Let's populate vectors one by one, making labels from the top directory

mkDataSetFolders = [mkDataSetFolders, 'S1/S1GL1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S1/S1HD1'];
mkLabels = [mkLabels, mkLabelCur]; 
mkDataSetFolders = [mkDataSetFolders, 'S1/S1HD2'];
mkLabels = [mkLabels, mkLabelCur];  
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK1'];
mkLabels = [mkLabels, mkLabelCur]; 
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK2'];
mkLabels = [mkLabels, mkLabelCur]; 
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK3'];
mkLabels = [mkLabels, mkLabelCur]; 
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK4'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK5'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK6'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK7'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S1/S1MK8'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S1/S1NM2']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S2/S2HD1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur]; 
mkDataSetFolders = [mkDataSetFolders, 'S2/S2GL1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S2/S2NM2']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S3/S3HD1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S3/S3HD2'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S3/S3MK1'];
mkLabels = [mkLabels, mkLabelCur]; 
mkDataSetFolders = [mkDataSetFolders, 'S3/S3MK2'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S3/S3MK3'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S3/S3MK4'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S3/S3MK5'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S3/S3NM3']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S4/S4GL1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S4/S4HD1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S4/S4MK1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S4/S4NM2']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S5/S5MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S5/S5MK2'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S5/S5MK3'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S5/S5MK4'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S5/S5NM4']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S6/S6MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S6/S6MK2'];
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S7/S7MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7MK2'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7MK3'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7HD1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7HD2'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7FM1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7FM2'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7FM3'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S7/S7NM4']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S10/S10MK2'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S10/S10MK1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S10/S10MK3'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S10/S10MK4'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S10/S10NM2']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S11/S11MK2'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S11/S11MK1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S11/S11NM3']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S12/S12MK2'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S12/S12MK1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S12/S12NM2']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S13/S13MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S14/S14HD1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S14/S14GL1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S14/S14MK1'];
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S14/S14NM2']; %
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S15/S15MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S16/S16MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S17/S17MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S18/S18MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S19/S19GL1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];
mkDataSetFolders = [mkDataSetFolders, 'S19/S19MK1'];
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S20/S20MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];

mkDataSetFolders = [mkDataSetFolders, 'S21/S21MK1'];
[~, n] = size(mkDataSetFolders);
[tmpStr, ~] = strsplit(mkDataSetFolders(n), '/');
mkLabelCur = tmpStr(1,1);
mkLabels = [mkLabels, mkLabelCur];


%% Replace Sfx template with the actual value of the image dimensions
mkDataSetFolders = strrep(mkDataSetFolders, 'Sfx', dataFolderSfx);
mkLabels = strrep(mkLabels, 'Sfx', dataFolderSfx);

% Build a full path  
mkDataSetFullFolders = fullfile(dataFolder, mkDataSetFolders);


%% Create a vector of the makeup iamges Datastores with top folder lables

[~, nMakeups] = size(mkDataSetFolders);
mkImages = cell(nMakeups,1);


for i=1:nMakeups
    
    
    %% Create Datastore for each label
    mkImage = imageDatastore(mkDataSetFullFolders(i), 'IncludeSubfolders', false,...
                                'LabelSource', 'none');
    mkImage.ReadFcn = readFcn;
       
    % Label all images in the Datastore with the top folder label                       
    [n, ~] = size(mkImage.Files);  
    tmpStr = strings(n,1);
    tmpStr(:) = mkLabels(i);
    mkImage.Labels = categorical(tmpStr); 
                            
    %countEachLabel(mkImage)    
    
    mkImages{i} = mkImage;
end                        
    

end

