%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% model = loadYeastModel
% Loads model and adds the rxnGeneMatrix to the structure
%
% Benjam�n J. S�nchez
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function model = loadYeastModel

scriptFolder = fileparts(which(mfilename));
currentDir = cd(scriptFolder);
model = readCbModel('../ModelFiles/xml/yeastGEM.xml');
model = buildRxnGeneMat(model);
cd(currentDir)

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%