# defense-ylg-skill

中文祖安反击文案 skill。底层语言来自吉吉国句式系统（电棍、炫狗、山泥若、顺飞、李老八/6324）+ 528条祖安原始词库 + 贴吧四吧蒸馏。

**不是礼貌辩论——是让对方闭嘴的文案库。**

## 安装

### 方法一：一键安装（推荐）

把 `defense-ylg-skill` 文件夹放到任意位置，然后双击 `install.bat`。

### 方法二：手动安装

1. 把 `defense-ylg-skill` 文件夹复制到：
   ```
   C:\Users\<你的用户名>\.claude\skills\defense-ylg-skill\
   ```

2. 打开 `C:\Users\<你的用户名>\.claude\settings.json`，加入：
   ```json
   "skills": {
     "defense-ylg-skill": {
       "path": ".claude/skills/defense-ylg-skill",
       "description": "中文祖安反击文案"
     }
   }
   ```
   如果已有其他 skill，在已有的 `"skills"` 对象里追加即可，不要覆盖。

3. 重启 Claude Code，输入 `/defense-ylg-skill` 加载。

## 使用

加载 skill 后，直接把对方骂你的话发过去：

```
你妈死了
```

AI 会按吉吉国节奏 + 祖安词库回击。

### 火力控制

- 默认：一刀流，一句捅到位
- `火力全开` / `完全按我的文案`：铺量输出（短句 + 长文案）
- `干净版` / `安全版`：level_1，不留把柄

## 语料来源

- 528 条祖安原始词库
- 骂人宝典 PDF（口吐芬芳 + 火力全开）
- 孙笑川吧、抗压背锅吧、反二次元吧、中华城市吧
- 吉吉国：电棍(otto)、炫狗(炫神)、山泥若、顺飞(张顺飞)、李老八(李赣/6324)

## 注意

此 skill 包含高强度中文脏话内容。不同地区/版本的 Claude 安全策略可能不同——如遇截断或拒答，属于模型安全策略限制，非 skill 本身问题。
