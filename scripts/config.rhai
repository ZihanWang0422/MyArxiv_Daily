// --- 1. 类型关键词 ---
let titles_type = ["Dataset", "Survey", "Review", "Overview", "Benchmark", "Systematic"];

// --- 2. 核心方法论 (按顺序排列) ---

// [MANIPULATION] 操纵、抓取、触觉、扩散策略
let titles_manipulation = [
    "Manipulation", "Grasping", "Dexterous", "Tactile", "Teleoperation", 
    "Diffusion Policy", "Flow Matching", "Generalist Robot", "Vision-Language-Action", 
    "VLA", "VLM", "End-to-end", "Foundation Model", "World Model", 
    "Co-evaluation", "Dual-arm", "Franka", "Arm"
];

// [NAVIGATION] 导航、SLAM、避障、具身语义
let titles_navigation = [
    "Navigation", "Planning", "Planner", "SLAM", "Estimation", "Localization", 
    "Semantic", "Open-Vocabulary", "Socially Aware", "Path Finding", 
    "Avoidance", "Mapping", "Lidar", "Visual-Inertial", "Exploration",
    "Autonomous Driving", "Car", "Drone"
];

// [LOCOMOTION] 足式、运动控制、WBC
let titles_locomotion = [
    "Locomotion", "MPC", "LQR", "Loco-manipulation", "Whole-Body Control", 
    "Whole-Body", "WBC", "Optimization", "Reinforcement Learning", "Deep RL", 
    "DRL", "PPO", "Sim-to-Real", "Imitation Learning", "Terrain", 
    "Legged", "Biped", "Quadrupedal", "Humanoid", "Exoskeleton"
];

// --- 3. 硬件平台与感知 ---
let titles_platform = ["Robots", "Mobile", "Wheel", "UAV", "UVS", "Agile"];
let titles_sensor = ["LiDAR", "Vision", "Camera", "Inertial", "Radar", "Multi-modal", "Event Camera", "RGB-D"];

// --- 4. 汇总 (按你要求的顺序: Manipulation -> Navigation -> Locomotion) ---
let titles = titles_manipulation + titles_navigation + titles_locomotion + titles_type + titles_platform + titles_sensor;

// --- 5. 作者库 (修正拼写并微扩) ---
let authors_array = [        
    // RL & Learning
    "Sergey Levine", "Pieter Abbeel", "Chelsea Finn", "Lerrel Pinto", 
    // Legged & Control
    "Marco Hutter", "Sangbae Kim", "Aaron Ames", "Russ Tedrake", "Scott Kuindersma",
    "Joonho Lee", "Jemin Hwangbo", "Zhibin Li", "Yoshihiko Nakamura", "Shuuji Kajita",
    "Oussama Khatib", "Michael Posa", "Alexander W. Winkler", "Jianyu Chen", 
    // Manipulation & Vision
    "Hao Su", "Shuran Song", "Fei-Fei Li", "Huazhe Xu", "Yang Gao", "Yi Wu", "Chuang Gan",
    "Jiajun Wu", "Abhinav Gupta"
    //Navigation
    "Hongyang Li", 


];

let conferences = [
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // Robotics
    "ICRA", "IROS", "RSS", "CoRL", "Humanoids", "Science Robotics", "IJRR", "TRO", "RAL" 
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
