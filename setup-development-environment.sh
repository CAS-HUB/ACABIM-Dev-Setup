#!/bin/bash

echo "Setting up Compliance Audit Systems Projects in ${PWD}";

[ -d ACABIM ] > /dev/null 2>&1 || mkdir ACABIM;
cd ACABIM;

mkdir ACABIM-BackEnd;
mkdir ACABIM-FrontEnd;
mkdir ACABIM-Server-Config;

cd ACABIM-BackEnd;

cat <<EOT>> ComplianceAuditSystems.BackEnd.sln 
Microsoft Visual Studio Solution File, Format Version 12.00
Project("{2150E333-8FDC-42A3-9474-1A3956D46DE8}") = "Frameworks", "Frameworks", "{54D47FA2-4B9E-482B-AC01-210FF219F95D}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "LKMParser", "Frameworks\LKMParser\LKMParser\LKMParser.csproj", "{DE1A82F4-3099-47E8-981D-3378A6B7F769}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "DataQueryingEngine", "Frameworks\DataQueryingEngine\DataQueryingEngine\DataQueryingEngine.csproj", "{7B28E459-7A91-4CC8-A2C0-B68E15F37905}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "CAPProcessingEngine", "Frameworks\CAPProcessingEngine\CAPProcessingEngine\CAPProcessingEngine.csproj", "{F22C4618-DF16-4177-B821-8E4AAFC8C716}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "FileManager", "Frameworks\FileManager\FileManager\FileManager.csproj", "{CDD1445E-DC41-4122-B6A5-130FFA8EFAFA}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "CAPParser", "Frameworks\CAPParser\CAPParser\CAPParser.csproj", "{D54F44E9-0447-408F-B19A-F3C42BA6369D}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "Logging", "Frameworks\Logging\Logging\Logging.csproj", "{7FDF194C-ECD2-4AE5-8BD2-89892108F189}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "ComplianceAuditSystems.Acabim.Api", "ACABIM-API\ComplianceAuditSystems.Acabim.Api\ComplianceAuditSystems.Acabim.Api.csproj", "{E1463696-09AC-4127-B7E8-4B6F7C8E0970}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "ComplianceAuditSystems.Acabim.Authentication", "ACABIM-Authentication\ComplianceAuditSystems.Acabim.Authentication\ComplianceAuditSystems.Acabim.Authentication.csproj", "{D24C066B-FB2E-49D1-8B7A-344458FC4CD3}"
EndProject
Project("{2150E333-8FDC-42A3-9474-1A3956D46DE8}") = "Tests", "Tests", "{39D95FAD-B377-45B5-BA9B-A24E758AD906}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "CAPParserTest", "Frameworks\CAPParser\CAPParserTest\CAPParserTest.csproj", "{F4B8139F-55D8-45C0-A1FC-07D0B955137A}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "CAPProcessingEngineTest", "Frameworks\CAPProcessingEngine\CAPProcessingEngineTest\CAPProcessingEngineTest.csproj", "{0992316B-C182-482D-B925-4603B4EC95B3}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "DataQueryingEngineTest", "Frameworks\DataQueryingEngine\DataQueryingEngineTest\DataQueryingEngineTest.csproj", "{071A8368-13D2-477C-8716-F7317898C040}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "FileManagerTest", "Frameworks\FileManager\FileManagerTest\FileManagerTest.csproj", "{607F7462-F6C0-49EF-A834-068551A07369}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "LKMParserTest", "Frameworks\LKMParser\LKMParserTest\LKMParserTest.csproj", "{7651827D-A013-48A2-BFD4-71F7E4B79FEB}"
EndProject
Project("{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}") = "CAPFunctionManager", "Frameworks\CAPFunctionManager\CAPFunctionManager\CAPFunctionManager.csproj", "{E0395DA5-231A-4D00-B3AD-33AE09B56A33}"
EndProject
Global
    GlobalSection(SolutionConfigurationPlatforms) = preSolution
        Debug|Any CPU = Debug|Any CPU
        Release|Any CPU = Release|Any CPU
    EndGlobalSection
    GlobalSection(ProjectConfigurationPlatforms) = postSolution
        {DE1A82F4-3099-47E8-981D-3378A6B7F769}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {DE1A82F4-3099-47E8-981D-3378A6B7F769}.Release|Any CPU.Build.0 = Release|Any CPU
        {DE1A82F4-3099-47E8-981D-3378A6B7F769}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {DE1A82F4-3099-47E8-981D-3378A6B7F769}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
        {7B28E459-7A91-4CC8-A2C0-B68E15F37905}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {7B28E459-7A91-4CC8-A2C0-B68E15F37905}.Release|Any CPU.Build.0 = Release|Any CPU
        {7B28E459-7A91-4CC8-A2C0-B68E15F37905}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {7B28E459-7A91-4CC8-A2C0-B68E15F37905}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
        {F22C4618-DF16-4177-B821-8E4AAFC8C716}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {F22C4618-DF16-4177-B821-8E4AAFC8C716}.Release|Any CPU.Build.0 = Release|Any CPU
        {F22C4618-DF16-4177-B821-8E4AAFC8C716}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {F22C4618-DF16-4177-B821-8E4AAFC8C716}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
        {CDD1445E-DC41-4122-B6A5-130FFA8EFAFA}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {CDD1445E-DC41-4122-B6A5-130FFA8EFAFA}.Release|Any CPU.Build.0 = Release|Any CPU
        {CDD1445E-DC41-4122-B6A5-130FFA8EFAFA}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {CDD1445E-DC41-4122-B6A5-130FFA8EFAFA}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
        {D54F44E9-0447-408F-B19A-F3C42BA6369D}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {D54F44E9-0447-408F-B19A-F3C42BA6369D}.Release|Any CPU.Build.0 = Release|Any CPU
        {D54F44E9-0447-408F-B19A-F3C42BA6369D}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {D54F44E9-0447-408F-B19A-F3C42BA6369D}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
        {7FDF194C-ECD2-4AE5-8BD2-89892108F189}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {7FDF194C-ECD2-4AE5-8BD2-89892108F189}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {7FDF194C-ECD2-4AE5-8BD2-89892108F189}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {7FDF194C-ECD2-4AE5-8BD2-89892108F189}.Release|Any CPU.Build.0 = Release|Any CPU
        {E1463696-09AC-4127-B7E8-4B6F7C8E0970}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {E1463696-09AC-4127-B7E8-4B6F7C8E0970}.Release|Any CPU.Build.0 = Release|Any CPU
        {E1463696-09AC-4127-B7E8-4B6F7C8E0970}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {E1463696-09AC-4127-B7E8-4B6F7C8E0970}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
        {D24C066B-FB2E-49D1-8B7A-344458FC4CD3}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {D24C066B-FB2E-49D1-8B7A-344458FC4CD3}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {D24C066B-FB2E-49D1-8B7A-344458FC4CD3}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {D24C066B-FB2E-49D1-8B7A-344458FC4CD3}.Release|Any CPU.Build.0 = Release|Any CPU
        {F4B8139F-55D8-45C0-A1FC-07D0B955137A}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {F4B8139F-55D8-45C0-A1FC-07D0B955137A}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {F4B8139F-55D8-45C0-A1FC-07D0B955137A}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {F4B8139F-55D8-45C0-A1FC-07D0B955137A}.Release|Any CPU.Build.0 = Release|Any CPU
        {0992316B-C182-482D-B925-4603B4EC95B3}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {0992316B-C182-482D-B925-4603B4EC95B3}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {0992316B-C182-482D-B925-4603B4EC95B3}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {0992316B-C182-482D-B925-4603B4EC95B3}.Release|Any CPU.Build.0 = Release|Any CPU
        {071A8368-13D2-477C-8716-F7317898C040}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {071A8368-13D2-477C-8716-F7317898C040}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {071A8368-13D2-477C-8716-F7317898C040}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {071A8368-13D2-477C-8716-F7317898C040}.Release|Any CPU.Build.0 = Release|Any CPU
        {607F7462-F6C0-49EF-A834-068551A07369}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {607F7462-F6C0-49EF-A834-068551A07369}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {607F7462-F6C0-49EF-A834-068551A07369}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {607F7462-F6C0-49EF-A834-068551A07369}.Release|Any CPU.Build.0 = Release|Any CPU
        {7651827D-A013-48A2-BFD4-71F7E4B79FEB}.Debug|Any CPU.ActiveCfg = Debug|Any CPU
        {7651827D-A013-48A2-BFD4-71F7E4B79FEB}.Debug|Any CPU.Build.0 = Debug|Any CPU
        {7651827D-A013-48A2-BFD4-71F7E4B79FEB}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {7651827D-A013-48A2-BFD4-71F7E4B79FEB}.Release|Any CPU.Build.0 = Release|Any CPU
        {E0395DA5-231A-4D00-B3AD-33AE09B56A33}.Release|Any CPU.ActiveCfg = Release|Any CPU
        {E0395DA5-231A-4D00-B3AD-33AE09B56A33}.Release|Any CPU.Build.0 = Release|Any CPU
        {E0395DA5-231A-4D00-B3AD-33AE09B56A33}.Debug|Any CPU.ActiveCfg = GlobalDebug|Any CPU
        {E0395DA5-231A-4D00-B3AD-33AE09B56A33}.Debug|Any CPU.Build.0 = GlobalDebug|Any CPU
    EndGlobalSection
    GlobalSection(NestedProjects) = preSolution
        {DE1A82F4-3099-47E8-981D-3378A6B7F769} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
        {7B28E459-7A91-4CC8-A2C0-B68E15F37905} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
        {F22C4618-DF16-4177-B821-8E4AAFC8C716} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
        {CDD1445E-DC41-4122-B6A5-130FFA8EFAFA} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
        {D54F44E9-0447-408F-B19A-F3C42BA6369D} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
        {7FDF194C-ECD2-4AE5-8BD2-89892108F189} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
        {F4B8139F-55D8-45C0-A1FC-07D0B955137A} = {39D95FAD-B377-45B5-BA9B-A24E758AD906}
        {0992316B-C182-482D-B925-4603B4EC95B3} = {39D95FAD-B377-45B5-BA9B-A24E758AD906}
        {071A8368-13D2-477C-8716-F7317898C040} = {39D95FAD-B377-45B5-BA9B-A24E758AD906}
        {607F7462-F6C0-49EF-A834-068551A07369} = {39D95FAD-B377-45B5-BA9B-A24E758AD906}
        {7651827D-A013-48A2-BFD4-71F7E4B79FEB} = {39D95FAD-B377-45B5-BA9B-A24E758AD906}
        {E0395DA5-231A-4D00-B3AD-33AE09B56A33} = {54D47FA2-4B9E-482B-AC01-210FF219F95D}
    EndGlobalSection
EndGlobal
EOT

git clone git@github.com:CAS-HUB/ACABIM-API.git ACABIM-API -v --progress;
git clone git@github.com:CAS-HUB/ACABIM-Authentication.git ACABIM-Authentication -v --progress;

mkdir Framworks;
cd Framworks;

git clone git@github.com:CAS-HUB/CAPFunctionManager.git CAPFunctionManager -v --progress;
git clone git@github.com:CAS-HUB/CAPParser.git CAPParser -v --progress;
git clone git@github.com:CAS-HUB/CAPProcessingEngine.git CAPProcessingEngine -v --progress;
git clone git@github.com:CAS-HUB/DataQueryingEngine.git DataQueryingEngine -v --progress;
git clone git@github.com:CAS-HUB/FileManager.git FileManager -v --progress;
git clone git@github.com:CAS-HUB/LKMParser.git LKMParser -v --progress;
git clone git@github.com:CAS-HUB/Logging.git Logging -v --progress;

cd ../..;
cd ACABIM-FrontEnd;

git clone git@github.com:CAS-HUB/acabim-ui.git acabim-ui -v --progress;

mkdir Framworks;
cd Framworks;

git clone git@github.com:CAS-HUB/acabim-api-client.git acabim-api-client -v --progress;

echo "Development Environment is Ready";