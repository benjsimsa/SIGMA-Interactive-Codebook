---
title: "Data cuRation for OPen Science (DROPS) User Guide"
author: "CCP KU Leuven"
output:
  html_document:
    toc: yes
    toc_float: yes
  pdf_document: default
  word_document:
    toc: yes
bibliography: DROPS.bib
csl: apa.csl
---

# Welcome to DROPS

## What is DROPS?

Data cuRation for OPen Science (DROPS) is a data checkout system. It allows researchers to request data from several datasets collected by the Center of Contextual Psychiatry at KU Leuven and tracks who requested and accessed which data, and when, in a detailed way. In this manual, you can find an overview of the steps necessary for obtaining data from the DROPS system.

## Which data can be requested through DROPS? {#which}

As of now, you can use DROPS to request data from the four following studies:

-   [*SIGMA*](https://gbiomed.kuleuven.be/english/research/50000666/50000673/cpp/research-1/social-interaction/sigma/index.htm) --⁠ a longitudinal study that combined questionnaires and ecological momentary assessment data to assess the relationships between social risk factors, psychological mechanisms and psychopathology in an initial sample of 1,913 adolescents. So far, the data from the first and second wave, as well as the additional COVID wave are available in DROPS. The contact persons for the SIGMA dataset are [Robin Achterhof](https://www.kuleuven.be/wieiswie/nl/person/00115655) and [Olivia Kirtley](https://www.kuleuven.be/wieiswie/nl/person/00117419).

    The protocol for the SIGMA study [@kirtley_initial_2021] can be found [here](https://psyarxiv.com/jp2fk/). [Click here](https://osf.io/xwvc5/) to access an Open Science Framework repository with information about the studies published using SIGMA data and the measures included in the study. [Click here](https://sigmaleuven.shinyapps.io/Codebook/) to access an interactive codebook for the SIGMA study.

-   [*Interact*](https://pubmed.ncbi.nlm.nih.gov/31878966/) -- a study aimed at evaluating the efficacy of Acceptance and Commitment Therapy in Daily Life, an ecological momentary intervention. Broadly, the dataset contains variables related to psychotic experiences, psychopathology, and global and social functioning. The contact person for the Interact study is [Thomas Vaessen](https://www.kuleuven.be/wieiswie/nl/person/00106722).

-   *EXPOSS* -- A (non-ESM) pilot study of 371 first-year Psychology students to develop the exposure to self-harm and suicide scale (EXPOSS), a new measure of direct and media exposure to self-harm and suicide. Additional variables include depression, anxiety, stress, defeat, entrapment, social support, negative life events, positive and negative affect, and attitudes towards data sharing. The contact person for the EXPOSS dataset is [Olivia Kirtley](https://www.kuleuven.be/wieiswie/nl/person/00117419).

-   The *Methodology* dataset contains the data used for a project that investigated various methodological aspects of ESM research, including the effect of ESM questionnaire length and sampling frequency on participant burden on data quality [paper available [here](https://journals.sagepub.com/doi/10.1177/1073191120957102), @eisele_effects_2020], affective structure and measurement invariance paper [available [here](https://www.sciencedirect.com/science/article/pii/S0092656621000313?casa_token=Z6l7hIkmucUAAAAA:VLP3vqtJO_7lx2BKclkfVwFGg3F1LkEuTUvHGo8DLSna_pBUR-pjJVbuMHkbfafEnijEkHmfEcQ), @eisele_affective_2021].

## Who runs DROPS?

The DROPS system is run by the [Center for Contextual Psychiatry](https://gbiomed.kuleuven.be/english/research/50000666/50000673/cpp) at KU Leuven. The only person who can access the datasets and share them with researchers is the data manager, [Dr Martien Wampers](https://www.kuleuven.be/wieiswie/en/person/00007576). Additionally, there is a 'triage' committee for each of the datasets --⁠ one or more researchers that do not by default have the access to the data, but who keep track of what data have been used by whom and what studies are in progress using data from a particular project. The triage committee is in charge of approving abstract submissions and variable access requests.

## Why do we use DROPS?

Using DROPS provides the following benefits to both individual researchers and science in general: 

-   *It makes the use of data more efficient*. A lot of time and resources goes into collecting data at the Center for Contextual Psychiatry. As such, we want to use the data efficiently and make it available to other researchers, so that they can use it to answer their own research questions. 

-   *It prevents waste of time*. DROPS saves researchers time by preventing studies with identical research questions being conducted on the same datasets. If a researcher requests data to investigate a set of questions another person/team is already working on, they will be notified in early stages of their research process. 

-   *It facilitates confirmatory approach to secondary data analysis*. It is important to be able to show which analytical decisions were based on what information. When you plan and register your analyses before the data are collected, it is easy to distinguish between the analytical decisions that were made prior to and after you could see the data. Nonetheless, in secondary data analysis, the line between exploratory and confirmatory analysis can get blurry. By adding an extra step to the data sharing process, DROPS allows for a confirmatory approach to secondary data analysis.  

-   *It facilitates credibility in research*. Before obtaining the data for their secondary analyses, researchers are asked to clearly state the aims of their study and develop and pre-register a detailed analysis plan. Each step of the data release process is logged in a transparent way. As such, the researchers are provided with a series of receipts that prove they did not have access to the data before analyzing them. This improves the evidential value of secondary data analyses, increases the reusability of datasets and facilitates the transparency of research.

# How does DROPS work?

## The DROPS system

In this section, we will briefly walk you through the process of obtaining data from DROPS. The whole workflow is also illustrated in Figure 1 (below), and described in more detail in the following sections. 

\

The first step of the process is [drafting and submitting an **abstract**](#abstract) (steps 1 and 2 in the flowchart) --⁠ a brief description of your research questions and analysis plans. Before drafting your abstract, be sure to acquaint yourself with the codebook of the study you are planning to request data from, so that you have a clear idea about the sample and available variables. After your abstract is approved by the relevant triage committee, you will automatically receive an email with a link to the [**variable access request form**](#request) (steps 3 and 4), which will prompt you to provide the details of the variables you require (from the codebook). All researchers wishing to use data from the CCP are required to register their study on the Open Science Framework (OSF) or AsPredicted. Therefore you will also be asked to provide a link to the [**registration of your study**](#registering) in the variable access request form (steps 5 and 6). The registration should contain a more detailed version of the information contained in your abstract. After the triage committee approves your variable access request, the data manager will [send you a link to access the data]{#receiving}, along with a confirmation message of data transmission (steps 7 and 8).

It is also possible to use the DROPS system to [conduct a study following the Registered Reports publication format](#rr), to [request a subsample of the data](#power) to obtain parameter estimates for power analysis or to [request data for exploratory studies](exploratory). We describe the procedures for these specific situations in more detail below. 

## Abstract submission {#abstract}

The first step in requesting data through DROPS is filling out the DROPS [abstract submission form](https://redcap.gbiomed.kuleuven.be/surveys/?s=WDYAFAHWK4). Together with your co-author team (e.g., your supervisors and collaborators), you draft an abstract for your study in which you briefly describe the background rationale (including key references), clearly state your research questions and hypotheses, and give a brief overview of the analyses you are planning to conduct. You will also be asked to provide a precise description of the sample you want to request from DROPS (e.g. "all participants aged 12 years old"), and list all variables you are planning to use. 

To make the process of drafting the abstract with your co-authors easier, we recommend using [this template](https://docs.google.com/document/d/1WmAHdhIU37RJest4ozNItDl_Ygml4BUomt8a_EJ8yNs/edit). After completing the draft, you can easily copy-paste the text from the template into the corresponding text box in the DROPS submission form, which will also allow you to indicate which study you are requesting data from. 

After submission, you can download a date and time-stamped overview of your abstract submission.

*IMPORTANT!* After submitting the abstract in DROPS, it is no longer possible to make any changes to the abstract. Therefore, please make sure that the entire abstract is approved by all researchers involved in the study and that you have thoroughly proofread it before submitting it to DROPS.

After submission, the triage committee will review the abstract and decide whether the abstract meets the required criteria: 

-   the abstract should not have substantial overlap with other planned or ongoing work on the same datasets

-   the abstract should contain a sufficient amount of details and no required information should be missing

-    the authors only request variables that are included in the dataset. 

Abstracts will be either rejected or given a revise and resubmit when they overlap with ongoing or planned work, or when they contain errors. In case your abstract is rejected or given a revise and resubmit, you are welcome to either adapt the abstract accordingly and resubmit, or submit an abstract for a new study.

## Registering your study {#registering}

### For non-ESM studies

After the approval of your abstract (step 3 in the flowchart), you will be asked to provide a registration of your study (step 5) as a part of the variable access request (step 4). In this part of the user guide, we provide guidance on the paper registration process.

#### OSF registrations

The [Open Science Framework (OSF)](osf.io) is a free-to-use platform for facilitating open science practices. The OSF is one of the most widely-used platforms to register a research study. Either prior to data collection (pre-registration) or before accessing and analyzing already collected data (post-registration), you can register your research questions and analytical plans and receive a time and date-stamped confirmation of this. If you want to learn more about the reasons for and the benefits of registration, we recommend [this paper](https://www.pnas.org/doi/epdf/10.1073/pnas.1708274114) [@nosek_preregistration_2018]. Below, you can find more resources on how to register your studies on OSF and how to register secondary data analyses. For more information about the differences between pre-registration and post-registration, we refer the reader to [this paper about the registration continuum](https://psycnet.apa.org/doiLanding?doi=10.1037%2Fabn0000451) [@benning_registration_2019]. 

Please note that while the resources mentioned above often talk about pre-registration, we refer to post-registration in this user guide. Similar to pre-registration, post-registration is the practice of registering your hypotheses and analysis plans prior to accessing the data and conducting any analyses; in post-registration, however, the data are already collected at the time of the registration.

For more information about the registration of studies using preexisting data, please refer to the [template and tutorial for preregistering secondary data analysis](https://open.lnu.se/index.php/metapsychology/article/view/2625) [@van_den_akker_preregistration_2021].

When you start a new registration on OSF, there is now an option for "secondary data registration".

More information on how to register a study on the OSF: <https://help.osf.io/hc/en-us/articles/360019738834-Create-a-Preregistration>\

More information on how to make a view-only link to the registration: <https://help.osf.io/hc/en-us/articles/360042097853-Create-a-View-only-Link-for-a-Registration>

General OSF help page about registrations: <https://help.osf.io/hc/en-us/categories/360001550953-Registrations>

#### AsPredicted registrations

If you are requesting to use data for a non-ESM study, you can also register your study on the AsPredicted site (aspredicted.com). This is an easy and brief way to pre-register your study and make your study registration available for others to read. To pre-register your study at AsPredicted, you are asked to answer nine short questions about the research plan, hypotheses and analyses.

If you intend to request data from DROPS, we advise that you answer Question 1 *"Have any data been collected for this study already?"* of the AsPredicted template by selecting the following option:

*"It's complicated. We have already collected some data but explain in Question 8 why readers may consider this a valid pre-registration nevertheless."* In Question 8, you can then briefly explain that you are planning to use pre-existing data which you will access through a data-access system which time-stamps your access. Similarly to OSF, after registration, you can also create an anonymous version (PDF) of your registration for e.g. reviewers if you do not want to make your registration public yet.

### **For ESM studies**

#### OSF registrations

If you are requesting to use ESM data from DROPS, please use the [registration template for ESM research](https://osf.io/2chmu/) [@kirtley_making_2021]. The template is adapted from the original [Pre-Registration Challenge](https://osf.io/x5w7h/) (Mellor et al., 2019) and [pre-registration of pre-existing data](https://open.lnu.se/index.php/metapsychology/article/view/2625) [@van_den_akker_preregistration_2021] templates. The template includes questions that have been developed or adapted to be specifically relevant for ESM studies. This OSF page also includes two examples of how to complete the template, including a pre-registration (registering a study prior to data collection; Example 1) and a post-registration (registering a study of already collected data prior to accessing and analyzing them; Example 2).

For detailed instructions on using the template, please refer to the [tutorial paper](https://journals.sagepub.com/doi/abs/10.1177/2515245920924686) [@kirtley_making_2021].

If you require additional information about any of the studies in DROPS to complete your pre-registration, we advise that you contact the DROPS data manager, [Dr Martien Wampers](https://www.kuleuven.be/wieiswie/en/person/00007576). She will provide you with more details. 

#### AsPredicted registrations

\
For those less familiar with pre-registration (e.g., master students) who do not wish to pre-register their study at OSF, we recommend the shorter registration at AsPredicted. If you decide to use AsPredicted for your registration, please use Question 3: "Describe the key dependent variable(s) specifying how they will be measured" to indicate which of the variables you are requesting are ESM variables and which are non-ESM variables. We also advise that when describing your ESM variables, you explain if and how any transformation or indices such as sum scores or averages will be constructed from them.

### Power analysis {#power}

#### Statistical power

In the process of registering your secondary data analysis, you will be asked to specify the statistical power of your planned analyses. Put simply, statistical power is the probability of rejecting the null hypothesis in your study, given that there is a real effect present [i.e., the null hypothesis is false, @cohen_statistical_1992]. Conducting studies with only a small probability of finding an effect when it actually exists can result in a waste of time and resources, and it makes even the significant effects harder to interpret. As such, there is a push for psychologists to base their sample size plans on a priori estimation of statistical power. However, given the complex nature of the analyses used for ESM data, only about 2% of ESM studies on psychopathology report a power calculation [@trull2020] . 

We require registrations of (confirmatory) studies to include an a priori power analysis in order to contribute to the robustness of mental health research, make the interpretation of results straightforward, and prevent resource wastage. 

#### How to estimate statistical power

Of course, given that the data included in DROPS is already collected, you cannot influence the available sample size. Still, it is very useful to have an idea about the probability of your study in finding the smallest effect size of interest, and potentially adjusting your analytical plans (e.g., simplifying your statistical models or designating some research questions as exploratory) if the statistical power is insufficient. 

For the analysis of non-ESM data using statistical techniques such as t-tests, ANOVA or regression, we recommend using either the software [G-power](https://www.psychologie.hhu.de/arbeitsgruppen/allgemeine-psychologie-und-arbeitspsychologie/gpower) [@faul_statistical_2009] or the R package [pwr](https://cran.r-project.org/web/packages/pwr/pwr.pdf) [@champely_package_2018]. For mediation analyses, widely used in mental health research, power analysis is more complicated [@perugini2018]: under specific assumptions, analytical solutions are available in the R package [powerMediation](https://cran.r-project.org/web/packages/powerMediation/index.html) [@qiu2021]; in other scenarios, using simulations is the most feasible way of assessing statistical power. Similarly, in the case of more complex multilevel or longitudinal models using ESM data, calculating power is often only possible via simulation methods. We recommend using the [interactive Shiny app and accompanying tutorial paper](https://journals.sagepub.com/doi/full/10.1177/2515245920978738) [@lafit2020] that makes the simulation approach to power analysis for multilevel models more straightforward.

#### Requesting a subsample of data to calculate power

Regardless of which approach to power analysis you choose, you will likely need to have an idea about some characteristics of your data. Even in the relatively simple multilevel autoregressive(1) model used for estimating inertia from ESM data, you will need to specify the standard error of level 1 errors, random slopes and random intercepts. These parameters can usually not be easily derived from the literature. 

As a convenient solution for this, DROPS allows you to request a small subsample of the dataset you are planning to analyze, to estimate the parameters necessary for power analysis. The process of obtaining the subsample is a simplified version of the standard DROPS workflow: you will still have to submit an abstract (in which you clearly state that you are only requesting a subsample of the data), but it is not necessary to upload a registration at this point.

## Variable access request {#request}

After the triage committee approves your abstract, you will automatically receive a link to the variable access request form. You will then be asked to provide a view-only link to the registration of your study. In the following parts of this manual, you can find all the information you need about registering your study and generating view-only links. 

\

If you are using the Open Science Framework (OSF) to register your study, please provide a view-only link to the pre-registration itself, not to the whole OSF project. The view-only link for the OSF project does not provide access to the pre-registration.

You will also be asked to provide a list of the exact variables that you will use in your study. Please, refer to the variables by their name in the codebook of the dataset that you are requesting data from. For example, if you want to request data on participants' ages from the SIGMA study, you need to list the variable as "agl_ado_age", not "participant age". The codebooks are available at . If you are requesting data from multiple measurement points, please specify which variables you need for every measurement point. Similarly, clearly mention if you only need a subset of the data, e.g. for power calculations.

\

You will also need to specify the format in which you want to receive the data. R, Stata, SAS and SPSS users can request a .csv file with code to label the data. Users of other statistical software can request a .csv file with only the raw data, a .csv file with labels or a CDISC ODM-XML file. You can only choose one format.

\

After completing the request form, you can download a date and time-stamped overview of your variable access request. We recommend downloading this overview, so that you can compare your requested variables with the variables that you will receive from the data manager.

\
**Important to note:** after submitting the variable access request, it is no longer possible to make any changes to the list of requested variables. This includes adding and removing variables from the list. So make sure in advance that you have listed all variables that you will need for your study. Do not request variables that are not mentioned in the post-registration, you will not get access to them.

## Receiving data

After your variable access request is approved, you will receive an automatic email notifying you of the approval. Shortly after, the data manager will send you the dataset in the requested format. Along with the dataset, you will receive an email with the following [message:\\](message:\){.uri}

"The data requested by [your name] for the study titled [your study title] have been sent on [date]"\

Please check the dataset immediately after receiving it. Make sure that all variables you requested are included, that you received data from the correct measurement point(s) and that you received data from the correct subset of participants when applicable. You can use the download of the variable request form to check if everything is correct. In case there is a mistake in the dataset, contact the data manager as soon as possible. We will make sure that you receive the correct dataset.

## Special cases {#special}

### Registered Reports using DROPS

#### About Registered Reports

Registered Reports are a novel publication format with a two-stage research process. In the first stage, researchers are asked to specify their introduction, hypotheses, methods and analyses before collecting any data. These are then reviewed based on their theoretical and methodological soundness. When the paper is approved in the first stage, it is awarded an in-principle acceptance, which guarantees that the paper will be published after the data collection and analysis are completed, regardless of what the results are. In stage 2 of the review process, the reviewers make sure that the research that was conducted was in line with the protocol registered in Stage 1. In this way, the Registered Reports format prevents publication bias (i.e., ensures that a paper will be judged by its methods, not by its results) and gives researchers the opportunity to fine-tune their protocol before they collect data. We highly recommend considering the Registered Reports format for your secondary data analysis. For more information about the format itself and the review process, we recommend [this paper](https://www.nature.com/articles/s41562-021-01193-7).

#### Registered Reports and DROPS {#rr}

If you decide to write an article using the [Registered Reports format](https://www.cos.io/initiatives/registered-reports) [@chambers_registered_2013; @nosek_registered_2014], the process of requesting data via DROPS is similar to the standard procedure. As the first step, you submit an abstract in DROPS. After the abstract is approved, you will receive an automated email from DROPS asking you to submit the variable request form. In the variable request form, please indicate that the registration of your study is not yet available, as you are waiting for the Stage 1 manuscript acceptance. 

\

Likely, you will need a subsample of the data for power calculations before writing your Stage 1 manuscript and study registration. If that is the case, it is possible to submit a first abstract and variable request form in DROPS before submitting your introduction and methods section as a Stage 1 Registered Report. If you plan to do so, please state clearly that you are only requesting a subsample of the data. In the acceptance email for your abstract submission, reference number will be included that you will use to request the remaining data after your Stage 1 manuscript is accepted. 

After your Stage-1 manuscript is accepted by the journal, please submit a new abstract to request the remaining data for your main analyses. Then, you will be asked to submit your study registration and (second) variable request form to DROPS. After the variable request form is approved by DROPS, you will be able to download a time-stamped overview that confirms you have only accessed the dataset after Stage-1 manuscript acceptance.

### Exploratory studies {#exploratory}

It is possible to request DROPS datasets to conduct exploratory data analysis. Of course, given that some of the rules and suggestions mentioned above are aimed mostly at confirmatory approaches, they do not apply to exploratory analyses. Still, researchers should aim at maximum transparency when planning and reporting their exploratory analyses. 

\

While you do not have to register explicit hypotheses or plan for every possible contingency, we recommend that you clearly state the general intent of the study (what are you starting points, what do you want to learn), clarify your choice of variables and pre-processing/analytical plans. During the analysis itself, we recommend you to log the different analyses and decisions you conducted in a transparent way. For example, you can add updates to your original registration, explaining what variables and analytical procedures you added and why. 

\
For more information about pre-registering exploratory studies (and pre-registering secondary data analyses in general), we recommend [this article](https://open.lnu.se/index.php/metapsychology/article/view/2625) [@van_den_akker_preregistration_2021]. Additionally, the [guidelines for the Exploratory Reports publication format](https://www.elsevier.com/__data/promis_misc/Exploratory_Reports_Guidelines.pdf) are a good starting point for transparent exploratory secondary data analysis. Specifically, we recommend reporting effect sizes, confidence/credible intervals, or just directionalities of effects, instead of p-values in exploratory papers [@weston_recommendations_2019].

# Frequently Asked Questions

-   Q: ***How long does it approximately take to receive data through DROPS?***

    -   A: If you do not receive a response within 2 weeks of submitting your abstract or you do not receive the data within 2 weeks from submitting the data request form, please reach out to the [contact person](#which) of the respective study.

-   Q: ***What if my pre-registered models do not converge / there are errors in the pre-registered code / I decided to use different analyses than the ones I registered / assumptions of the statistical models were violated?***

    -   A: Some of the decisions you will make during the registration process will be dependent on the data. For example, upon finding out that your data violates assumptions you might want to use a statistical model different from the one you were initially planning to use. In the case of multilevel models widely used to analyse ESM data, non-convergence is a widespread issue. Although it is usually not possible to predict all possible issues that can arise during data analysis, we encourage you to include detailed contingency plans in your study registration. For example, you can pre-specify how you are going to deal with convergence issues or violated assumptions (and include the code for these contingencies in the registration). 

        Still, unexpected problems can arise even if you rigorously plan for possible contingencies. In that case, we recommend you to add updates reflecting the necessary changes to your registration and to clearly communicate the deviations from the registered analysis in the paper itself. The goal of study registration is maximum transparency, not perfection. For more information about contingency plans and reporting deviations from registration, we recommend the ESM pre-registration tutorial [@kirtley_making_2021].

        Please note that unless the deviations from registration requires accessing other data, it is not necessary to submit a new DROPS abstract with details of the new registration/deviation from the registration.

\

-   Q: ***I know broadly what variables I want to access but I have some questions. Can I use DROPS to ask questions?*** 

    -   A: Instead of using the DROPS forms to ask questions, please send your questions via email to the DROPS data manager [Dr Martien Wampers](https://www.kuleuven.be/wieiswie/nl/person/00007576). 

-   Q: ***I am a reviewer / I am planning to do a verification report of a study that used one of the datasets included in DROPS. To obtain the data for reanalysis, do I need to submit my own DROPS request (complete with abstract etc.), or is there a faster way to obtain the exact dataset that the original authors used?*** 

    -   As a reviewer, we recommend you to reach out directly to the contact person of the given dataset (see the [Which data can be request through DROPS?](https://docs.google.com/document/d/1q1S2q450807IaM0OHGwLHWKFfdbzaHCR8_07DCagO18/edit#heading=h.6eanlztnrvpa) subsection) and see if you can obtain the dataset based on the paper title. \

-   Q: ***I want to first request 70% of the sample to create a model, then, after I have the final model, I will request the remaining 30% to cross-validate it. Do I need to submit two separate requests?*** 

    -   A: Yes, DROPS allows for requesting subsamples of the datasets for the purposes of cross-validation. Please refer to the section about [requesting a subsample for power analysis](https://docs.google.com/document/d/1q1S2q450807IaM0OHGwLHWKFfdbzaHCR8_07DCagO18/edit#heading=h.qlx2etgrq9hr). 

-   Q: ***The journal I am submitting to asks that my data are made publicly available, what do I do?***

    -   You can state that the you used are stored in a restricted-access data repository maintained by the Center for Contextual Psychiatry and mention that there is a data-management system in place.

-   Q: ***What do I write in the 'data availability' statement when I submit my manuscript to a journal for publication?***

    -   See response above

-   Q: *I **am a supervisor and one of my students is going to use data from DROPS for their thesis, but I also want to write a paper on these data later on. Do we need two post-registrations?***

    -   If you are planning to run two separate studies, two separate post-registrations will be required. 

-   Q: ***One of my colleagues/students is going to run analyses on the same variables I used in a previous paper. Can I just send them the data to save time?***

    -   A: Although we understand that just sharing the data with your colleague might be the more practical way of doing things, one of the main functions of DROPS is to keep track of who accessed the datasets. This makes the lives of researchers easier as well, as DROPS provides them with date- and time-stamped confirmation of data access, that can be used to prove the data were only accessed after the study registration was submitted. As such, please start a new DROPS request for every study you are planning to conduct, even if it uses identical variables to a study you've already conducted. 

-   Q: ***How do I know if there is missing data in some of the variables I would like to use?***

    -   The general information about missing data and compliance in ESM variables are usually included in the study protocols.

-   Q: *I **don't know anything about pre-registration or open science. Help! Where do I start?*** 

    -   There are many good-quality introductory resources for getting into open science. For starters, we would recommend the following two articles:

        -   [Seven Easy Steps to Open Science](https://econtent.hogrefe.com/doi/full/10.1027/2151-2604/a000387) [@crüwell2019]

        -   Easing Into Open Science: A Guide for Graduate Students and their Advisors [@kathawalla2021]

-   Q: ***What formats can I request DROPS datasets in?*** 

    -   A: The two main formats you can request DROPS data in are **csv** and **CDISC ODM-XML**.

-   Q: ***I provided a view-only link to the entire OSF project with the registration, can you see it?***

    -   A: Unfortunately, the only way we can access your registration is via a view only link to **the registration itself**. 

-   Q: ***Can I get access to an entire dataset?***

    -   A: To be consistent with the main goals of the DROPS data curation system, we require researchers to only request variables that are directly relevant to your planned study.

# References
