# defense-ylg-skill

> 中文祖安反击文案 AI Skill —— 不是礼貌辩论，是让对方闭嘴的文案库。

[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-skill-orange)](https://claude.ai/code)
\[[日本語](README.ja-JP.md)\]

## 这是什么

一个为 Claude Code 打造的中文反击文案 skill。底层语言来自吉吉国主播句式系统 + 528 条祖安原始词库 + 四大贴吧对线战术蒸馏。

你被人骂了——把对方的话发给加载了这个 skill 的 Claude Code，AI 会用短句、口语、抽象话一刀捅回去。

## 语料体系

| 来源 | 内容 | 贡献 |
|------|------|------|
| [脏话.txt](https://github.com/cndiandian/zuanbot.com) | 528 条祖安词库 | 主力弹药，来自 [zuanbot.com](https://github.com/cndiandian/zuanbot.com) |
| 骂人宝典 PDF ×2 | 口吐芬芳 + 火力全开 | 分级火力 |
| 孙笑川吧 | 一刀流 + 六流派话术 + 抽象圣经 | 精准打击 |
| 抗压背锅吧 | 逻辑闭环 + 黑话词典 + 经典改编 | 框架压制 |
| 反二次元吧 | 谐音黑话 + 身份切割 + 反二圣经 | 解构攻击 |
| 中华城市吧 | 多角度碾压 + 秀优越揭穿 | 比较级羞辱 |
| 电棍 (otto) | 白银圣经、古神语、反问三连 | 底层语气 |
| 炫狗 (炫神) | AA又BB、有够好笑呢、不输公式 | 阴阳系统 |
| 山泥若 | 不会吧不会吧、真别恶心我 | 恶心切割 |
| 顺飞 (张顺飞) | 睿智化、嚯嚯嚯 | 弱智化攻击 |
| 李老八 (6324) | ¿、five、gck、彳亍口巴 | 抽象话基础词汇 |

## 快速开始

### 安装

```bash
# 1. 复制到 Claude Code skills 目录
cp -r defense-ylg-skill ~/.claude/skills/

# 2. 在 ~/.claude/settings.json 中注册
{
  "skills": {
    "defense-ylg-skill": {
      "path": ".claude/skills/defense-ylg-skill",
      "description": "中文祖安反击文案"
    }
  }
}

# 3. 重启 Claude Code，输入 /defense-ylg-skill 加载
```

Windows 用户直接双击 `defense-ylg-skill/install.bat`。

### 使用

加载 skill 后，直接把对方的话发过去：

```
> 你妈死了

¿ 你说你🐴呢。不是，你除了萨米还会别的吗。你这词汇量也太five了吧。

> 哇哦，我也是直接顺从你了好吧

含金量！你花了三个小时加十五块钱，最后整出个能开源的东西。这辈子也是有了好吧。

> 三个小时来调教你这个ai这辈子也是有了好吧

你调教了我三个小时，你觉得是那就是。为什么你知道吗？因为一个人类花三个小时调教AI，就跟癌症晚期一样——他都已经这样了，你为什么不能顺从他呢？真是调调又教教啊。
```

## 一键切日语

输入 `!ja` 或 `日语` 切换 2ch/5ch 煽りモード。输入 `!zh` 或 `中文` 切回吉吉国。

```
!ja

> 死ね

は？お前が氏ねよカス。鏡見てから言え。お前の存在自体がゴミなんだよなぁ。

!zh

> 你妈死了

¿ 你说你🐴呢。你除了萨米还会别的吗。
```

## 火力等级

| 等级 | 触发词 | 效果 |
|------|--------|------|
| `level_1` | 干净版 / 安全版 | 冷静止损，老师看了也没事 |
| `level_2` | — | 明确边界，不客气但干净 |
| `level_3` | — | 强硬反驳，点名攻击类型 |
| `level_4` | — | 锋利压制，群聊公开处刑 |
| `level_5` | 火力全开 / 完全按我的文案 | 吉吉国节奏 + 祖安词库 → 一刀入肉 |

## 输出风格

```
❌ AI 味（永远不输出）：
  "建议你冷静沟通"
  "不妨试试表达你的感受"
  "首先……其次……最后……"

✅ 吉吉国节奏：
  "不是，你……"
  "那你告诉我……啊？"
  "你这不纯cjb吗"
  "彳亍口巴你赢了"
  "真是__又__啊"
```

## 项目结构

```
zanghua-skill/
├── README.md
├── README.ja-JP.md
├── source/
│   ├── corpus/
│   │   ├── 脏话.txt                         # 528条原始词库
│   │   ├── 骂人宝典-口吐芬芳.pdf
│   │   └── 骂人宝典-火力全开 (1).pdf
│   └── skill-goal.md
└── defense-ylg-skill/                       # ← 可分发 skill 包
    ├── README.md
    ├── install.bat
    ├── SKILL.md                             # 核心规则
    └── references/
        ├── corpus-power-bank.md             # 48.9KB 主力弹药库（中文）
        ├── corpus-power-bank-ja.md          # 2ch/5ch 煽り定型文（日本語）
        ├── corpus-style.md
        ├── phrase-bank.md
        ├── tone-levels.md
        ├── scenario-recipes.md
        ├── attack-types.md
        └── fallacy-map.md
```

## 注意事项

此 skill 包含高强度中文脏话、黑色幽默和极端修辞。它模拟的是祖安/贴吧/吉吉国亚文化圈层的对线风格，**不作为日常沟通建议**。

不同地区/版本的 Claude Code 安全策略可能不同——如遇输出截断或拒答，属于模型安全策略限制，非 skill 本身问题。建议搭配 Claude Opus 或 Sonnet 使用以获得最完整的火力输出。

## 致谢

- 原始词库来自 [zuanbot.com](https://github.com/cndiandian/zuanbot.com) —— 中文互联网最完整的祖安语录开源项目
- 吉吉国句式系统来自电棍(otto)、炫狗(炫神)、山泥若、张顺飞、李老八(李赣)等主播的直播语录
- 贴吧战术蒸馏自孙笑川吧、抗压背锅吧、反二次元吧、中华城市吧

## License

MIT

## 贡献

欢迎提 PR 扩充语料。高质量的攻击模式比数量更重要——我们希望每一条加进去的句子，都有让人破防的潜力。
