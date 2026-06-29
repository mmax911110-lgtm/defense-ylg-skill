@echo off
chcp 65001 >nul
echo ========================================
echo   defense-ylg-skill 一键安装
echo ========================================
echo.

set "SKILL_DIR=%USERPROFILE%\.claude\skills\defense-ylg-skill"
set "SETTINGS_FILE=%USERPROFILE%\.claude\settings.json"

echo [1/3] 创建 skill 目录...
if not exist "%SKILL_DIR%" mkdir "%SKILL_DIR%"

echo [2/3] 复制 skill 文件...
xcopy /E /Y /Q "%~dp0*" "%SKILL_DIR%\"

echo [3/3] 注册 skill 到 settings.json...

REM 检查 settings.json 是否存在
if not exist "%SETTINGS_FILE%" (
    echo { "skills": { "defense-ylg-skill": { "path": ".claude/skills/defense-ylg-skill", "description": "中文祖安反击文案" } } } > "%SETTINGS_FILE%"
    echo settings.json 已创建。
    goto :done
)

REM 检查是否已注册
findstr /C:"defense-ylg-skill" "%SETTINGS_FILE%" >nul
if %errorlevel%==0 (
    echo defense-ylg-skill 已注册，跳过。
    goto :done
)

REM 备份原文件
copy "%SETTINGS_FILE%" "%SETTINGS_FILE%.bak" >nul

REM 检查文件是否已有 skills 对象
findstr /C:"""skills""" "%SETTINGS_FILE%" >nul
if %errorlevel%==0 (
    echo 请在 settings.json 中手动添加以下内容到 "skills" 对象中：
    echo.
    echo   "defense-ylg-skill": {
    echo     "path": ".claude/skills/defense-ylg-skill",
    echo     "description": "中文祖安反击文案"
    echo   }
    echo.
    echo 已备份原文件到 settings.json.bak
    goto :done
) else (
    echo { "skills": { "defense-ylg-skill": { "path": ".claude/skills/defense-ylg-skill", "description": "中文祖安反击文案" } } } >> "%SETTINGS_FILE%"
    echo settings.json 已更新。
)

:done
echo.
echo ========================================
echo   安装完成！
echo   重启 Claude Code，输入 /defense-ylg-skill 加载。
echo ========================================
pause
