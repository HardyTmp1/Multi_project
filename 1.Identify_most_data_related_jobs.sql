

/*Which companies are hiring the most for data-related roles?"
 - Top companies hiring for 'Data' positions
 - Which companies have the highest number of data-related job postings?
 - Leaders in data job hiring across companies
 */


SELECT 
    c.name, 
    j.job_title_short AS JOBS,
    COUNT(j.job_title_short) as COUNT_JOBS
FROM
    company_dim as c 
INNER JOIN job_postings_fact as j 
ON c.company_id = j.company_id 
WHERE 
    job_title_short LIKE 'Data%'
GROUP BY 
    c.name,
    j.job_title_short
ORDER BY 
    count_JOBS DESC
LIMIT 100;


[
  {
    "name": "Booz Allen Hamilton",
    "jobs": "Data Scientist",
    "count_jobs": "1572"
  },
  {
    "name": "Dice",
    "jobs": "Data Engineer",
    "count_jobs": "1220"
  },
  {
    "name": "Emprego",
    "jobs": "Data Engineer",
    "count_jobs": "1208"
  },
  {
    "name": "Listopro",
    "jobs": "Data Engineer",
    "count_jobs": "1183"
  },
  {
    "name": "Emprego",
    "jobs": "Data Analyst",
    "count_jobs": "1121"
  },
  {
    "name": "Emprego",
    "jobs": "Data Scientist",
    "count_jobs": "1076"
  },
  {
    "name": "Guidehouse",
    "jobs": "Data Scientist",
    "count_jobs": "1067"
  },
  {
    "name": "Robert Half",
    "jobs": "Data Analyst",
    "count_jobs": "1047"
  },
  {
    "name": "SynergisticIT",
    "jobs": "Data Scientist",
    "count_jobs": "1031"
  },
  {
    "name": "Walmart",
    "jobs": "Data Scientist",
    "count_jobs": "939"
  },
  {
    "name": "Insight Global",
    "jobs": "Data Analyst",
    "count_jobs": "892"
  },
  {
    "name": "Citi",
    "jobs": "Data Analyst",
    "count_jobs": "875"
  },
  {
    "name": "Upwork",
    "jobs": "Data Scientist",
    "count_jobs": "834"
  },
  {
    "name": "Harnham",
    "jobs": "Data Scientist",
    "count_jobs": "810"
  },
  {
    "name": "Capital One",
    "jobs": "Data Engineer",
    "count_jobs": "803"
  },
  {
    "name": "IBM",
    "jobs": "Data Engineer",
    "count_jobs": "732"
  },
  {
    "name": "Capgemini",
    "jobs": "Data Engineer",
    "count_jobs": "627"
  },
  {
    "name": "Tata Consultancy Services",
    "jobs": "Data Engineer",
    "count_jobs": "613"
  },
  {
    "name": "Dice",
    "jobs": "Data Analyst",
    "count_jobs": "604"
  },
  {
    "name": "Leidos",
    "jobs": "Data Scientist",
    "count_jobs": "594"
  },
  {
    "name": "UnitedHealth Group",
    "jobs": "Data Analyst",
    "count_jobs": "592"
  },
  {
    "name": "CGI",
    "jobs": "Data Engineer",
    "count_jobs": "584"
  },
  {
    "name": "Deloitte",
    "jobs": "Data Scientist",
    "count_jobs": "582"
  },
  {
    "name": "Insight Global",
    "jobs": "Data Engineer",
    "count_jobs": "558"
  },
  {
    "name": "Confidenziale",
    "jobs": "Data Analyst",
    "count_jobs": "549"
  },
  {
    "name": "Booz Allen Hamilton",
    "jobs": "Data Engineer",
    "count_jobs": "534"
  },
  {
    "name": "Michael Page",
    "jobs": "Data Engineer",
    "count_jobs": "530"
  },
  {
    "name": "Harnham",
    "jobs": "Data Engineer",
    "count_jobs": "524"
  },
  {
    "name": "Get It Recruit - Information Technology",
    "jobs": "Data Analyst",
    "count_jobs": "510"
  },
  {
    "name": "Dice",
    "jobs": "Data Scientist",
    "count_jobs": "507"
  },
  {
    "name": "Peraton",
    "jobs": "Data Scientist",
    "count_jobs": "498"
  },
  {
    "name": "Accenture",
    "jobs": "Data Engineer",
    "count_jobs": "485"
  },
  {
    "name": "Listopro",
    "jobs": "Data Scientist",
    "count_jobs": "481"
  },
  {
    "name": "Insight Global",
    "jobs": "Data Scientist",
    "count_jobs": "468"
  },
  {
    "name": "Michael Page",
    "jobs": "Data Analyst",
    "count_jobs": "468"
  },
  {
    "name": "Randstad",
    "jobs": "Data Analyst",
    "count_jobs": "462"
  },
  {
    "name": "Amazon",
    "jobs": "Data Engineer",
    "count_jobs": "444"
  },
  {
    "name": "Accenture",
    "jobs": "Data Scientist",
    "count_jobs": "438"
  },
  {
    "name": "Corporate",
    "jobs": "Data Analyst",
    "count_jobs": "420"
  },
  {
    "name": "Upwork",
    "jobs": "Data Engineer",
    "count_jobs": "417"
  },
  {
    "name": "UnitedHealth Group",
    "jobs": "Data Scientist",
    "count_jobs": "416"
  },
  {
    "name": "SynergisticIT",
    "jobs": "Data Analyst",
    "count_jobs": "410"
  },
  {
    "name": "Deloitte",
    "jobs": "Data Engineer",
    "count_jobs": "391"
  },
  {
    "name": "Robert Half",
    "jobs": "Data Engineer",
    "count_jobs": "381"
  },
  {
    "name": "Confidenziale",
    "jobs": "Data Scientist",
    "count_jobs": "373"
  },
  {
    "name": "Accenture",
    "jobs": "Data Analyst",
    "count_jobs": "371"
  },
  {
    "name": "Randstad",
    "jobs": "Data Engineer",
    "count_jobs": "366"
  },
  {
    "name": "Centene Corporation",
    "jobs": "Data Analyst",
    "count_jobs": "365"
  },
  {
    "name": "KPMG",
    "jobs": "Data Engineer",
    "count_jobs": "343"
  },
  {
    "name": "Hays",
    "jobs": "Data Engineer",
    "count_jobs": "342"
  },
  {
    "name": "Booz Allen Hamilton",
    "jobs": "Data Analyst",
    "count_jobs": "339"
  },
  {
    "name": "EPAM Systems",
    "jobs": "Data Engineer",
    "count_jobs": "335"
  },
  {
    "name": "Tesla",
    "jobs": "Data Analyst",
    "count_jobs": "333"
  },
  {
    "name": "Peroptyx",
    "jobs": "Data Analyst",
    "count_jobs": "331"
  },
  {
    "name": "Hays",
    "jobs": "Data Analyst",
    "count_jobs": "329"
  },
  {
    "name": "Diverse Lynx",
    "jobs": "Data Engineer",
    "count_jobs": "329"
  },
  {
    "name": "Apple",
    "jobs": "Data Scientist",
    "count_jobs": "324"
  },
  {
    "name": "IBM",
    "jobs": "Data Scientist",
    "count_jobs": "321"
  },
  {
    "name": "S&P Global",
    "jobs": "Data Analyst",
    "count_jobs": "320"
  },
  {
    "name": "Cognizant",
    "jobs": "Data Engineer",
    "count_jobs": "317"
  },
  {
    "name": "Meta",
    "jobs": "Data Scientist",
    "count_jobs": "316"
  },
  {
    "name": "Confidenziale",
    "jobs": "Data Engineer",
    "count_jobs": "314"
  },
  {
    "name": "Confidential",
    "jobs": "Data Analyst",
    "count_jobs": "313"
  },
  {
    "name": "ClickJobs.io",
    "jobs": "Data Engineer",
    "count_jobs": "313"
  },
  {
    "name": "Motion Recruitment",
    "jobs": "Data Engineer",
    "count_jobs": "313"
  },
  {
    "name": "Nigel Frank International",
    "jobs": "Data Engineer",
    "count_jobs": "311"
  },
  {
    "name": "EY",
    "jobs": "Data Engineer",
    "count_jobs": "304"
  },
  {
    "name": "Experis",
    "jobs": "Data Analyst",
    "count_jobs": "298"
  },
  {
    "name": "Deloitte",
    "jobs": "Data Analyst",
    "count_jobs": "298"
  },
  {
    "name": "Citi",
    "jobs": "Data Scientist",
    "count_jobs": "295"
  },
  {
    "name": "LTIMindtree",
    "jobs": "Data Engineer",
    "count_jobs": "295"
  },
  {
    "name": "Confidential",
    "jobs": "Data Engineer",
    "count_jobs": "293"
  },
  {
    "name": "Shopee",
    "jobs": "Data Analyst",
    "count_jobs": "290"
  },
  {
    "name": "Avanade",
    "jobs": "Data Engineer",
    "count_jobs": "288"
  },
  {
    "name": "PepsiCo",
    "jobs": "Data Analyst",
    "count_jobs": "285"
  },
  {
    "name": "EliteRecruitmentGroup",
    "jobs": "Data Scientist",
    "count_jobs": "283"
  },
  {
    "name": "Jobot",
    "jobs": "Data Analyst",
    "count_jobs": "283"
  },
  {
    "name": "Capgemini",
    "jobs": "Data Scientist",
    "count_jobs": "282"
  },
  {
    "name": "TikTok",
    "jobs": "Data Scientist",
    "count_jobs": "280"
  },
  {
    "name": "Michael Page",
    "jobs": "Data Scientist",
    "count_jobs": "279"
  },
  {
    "name": "Aston Carter",
    "jobs": "Data Analyst",
    "count_jobs": "275"
  },
  {
    "name": "KPMG US",
    "jobs": "Data Engineer",
    "count_jobs": "273"
  },
  {
    "name": "Visa",
    "jobs": "Data Engineer",
    "count_jobs": "269"
  },
  {
    "name": "BNP Paribas",
    "jobs": "Data Analyst",
    "count_jobs": "265"
  },
  {
    "name": "Harnham",
    "jobs": "Data Analyst",
    "count_jobs": "263"
  },
  {
    "name": "Wells Fargo",
    "jobs": "Data Analyst",
    "count_jobs": "261"
  },
  {
    "name": "Flexjobs",
    "jobs": "Data Analyst",
    "count_jobs": "256"
  },
  {
    "name": "ClearanceJobs",
    "jobs": "Data Scientist",
    "count_jobs": "252"
  },
  {
    "name": "Experis",
    "jobs": "Data Engineer",
    "count_jobs": "249"
  },
  {
    "name": "EY",
    "jobs": "Data Scientist",
    "count_jobs": "249"
  },
  {
    "name": "Capital One",
    "jobs": "Data Scientist",
    "count_jobs": "247"
  },
  {
    "name": "NORC at the University of Chicago",
    "jobs": "Data Analyst",
    "count_jobs": "245"
  },
  {
    "name": "Pfizer",
    "jobs": "Data Scientist",
    "count_jobs": "245"
  },
  {
    "name": "PayPal",
    "jobs": "Data Scientist",
    "count_jobs": "242"
  },
  {
    "name": "Cognizant Technology Solutions",
    "jobs": "Data Engineer",
    "count_jobs": "241"
  },
  {
    "name": "Bosch Group",
    "jobs": "Data Engineer",
    "count_jobs": "239"
  },
  {
    "name": "EY",
    "jobs": "Data Analyst",
    "count_jobs": "239"
  },
  {
    "name": "NielsenIQ",
    "jobs": "Data Scientist",
    "count_jobs": "238"
  },
  {
    "name": "ClickJobs.io",
    "jobs": "Data Analyst",
    "count_jobs": "238"
  },
  {
    "name": "Motion Recruitment",
    "jobs": "Data Scientist",
    "count_jobs": "236"
  }
]