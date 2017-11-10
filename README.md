# Bitcoin_Data-Scrape

The following code scraps the user comments from the Bitcoin Discussion Forum https://bitcointalk.org/index.php?board=1.0. You can see that there are different threads under the subject column on the website. Every thread is a link on its own. once we click on individual links we can get user comments for that particular thread/subject/topic posted. eg: Forum Moderation Policy has 497 replies. Our aim is to extract all those 497 comments.

Step-1:
initially we would want to extract all links of the thread present on all pages. Now each page also has an hyper link. Hence the extract_links_python notebook will give you the code for extracting all available links on one page.   
