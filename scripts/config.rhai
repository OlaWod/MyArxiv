let titles_type = ["Dataset", "Survey", "Review", "Overview",
                    "Text-to-Speech", "Speech Synthesis", "Voice Conversion", "Vocoder"];
let titles_model = []; // ["BERT", "GPT", "Transformer"];
let titles_method = []; // ["Pre-train", "Pretrain", "Prompt", "Self-Supervised"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio",
                    "Yossi Adi", "Wei-Ning Hsu", 
                    "Benjamin van Niekerk", "Herman Kamper",
                    "Jaehyeon Kim", "Jungil Kong", "Sang-gil Lee", "Sungwon Kim",
                    "Shinji Watanabe", "Tomoki Toda", "Heiga Zen", "Xin Wang", "Wen-Chin Huang",
                    "Ye Jia", "Yuxuan Wang", "Yi Ren", "Xu Tan", "Dan Su", "Dong Yu",
                    "Lei Xie", "Kai Yu", "Zhiyong Wu", "Zhou Zhao", "Helen Meng", "Hung-yi Lee"
                    ];

let conferences = [
    "ICASSP", "INTERSPEECH",
    "ICLR", "NeurIPS", "NIPS", "ICML", 
    "ACL", "EMNLP", "NAACL",
    "AAAI", "IJCAI", "ACM MM",
    "TASLP", "SLT"
    // AI
    // "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    // "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    // "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    // "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    // "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    // "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    // "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    // "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    // "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
