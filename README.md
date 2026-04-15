# Portfolio 1-Hospital Appointment No-Show Analysis
### Executive Summary :

### Business Problem :

Missed appointments (no-shows) present a major challenge for healthcare providers, impacting operational efficiency, revenue, and patient outcomes. Analysis of this **mock hospital dataset** reveals a no-show rate of **approximately 20%**. This project aims to explore the underlying patterns and key factors contributing to no-shows, and to develop actionable, data-driven strategies to reduce their occurrence

### Methodology :
  1. Data cleaning, preparation, and management in Python to ensure data integrity, consistency, and usability
  2. Pearson correlation and Chi-square tests in Python to identify correlation between key variables and no-show rates
  3. Segmentation analysis in SQL to group the dataset into meaningful categories and analyze no-show rates across segments

### Skills :
  1. SQL :  Aggregate functions, Data segmentation, Case, Multi-dimensional grouping, Basic data exploration
  2. Python: Pandas, SciPy, Exploratory data analysis, Correlation analysis, Statistical testing

### Results :
  1. Pearson correlation and Chi-square tests reveal a very weak association between patient factors (scholarship, hypertension, diabetes, alcohol use, handicap, and gender) and no-show rates. Interestingly, the dataset also shows that patients who received SMS reminders prior to their appointments had higher no-show rates
  2. A key driver of no-show rates identified in the analysis is **Waiting time (Wait Days)**, defined as the difference between the appointment date and the scheduled date. Patients with a waiting time of over one week show a **150% higher no-show rate** compared to those with less than one week
  3. Another contributing factor identified in the analysis is **Age**. Patients aged 40 and below show a **33% higher no-show rate** compared to those over 40

### Business Recommendations :
Based on the analysis and findings, I recommend the following:

  1. Prioritize scheduling efficiency to reduce appointment waiting times
  2. Revamp the scheduling system by introducing a waitlist system to backfill cancellations or overbooking strategies
  3. Optimize staff and provider capacity to reduce scheduling delays
  4. Introduce targeted interventions for younger patients (≤40), such as personalized reminders and easy rescheduling options
  5. Re-evaluate the SMS reminder strategy and test alternative communication approaches

### Next Steps :
  1. Finalize action plans with administrative and clinical leadership
  2. Test finalized action plans through A/B testing
  3. Build a dashboard to track no-show trends and assess the effectiveness of implemented interventions over time
  4. Expand analysis with additional variables to improve insights




