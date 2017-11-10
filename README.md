# Bitcoin_Data-Scrape

The following code scraps the user comments from the Bitcoin Discussion Forum https://bitcointalk.org/index.php?board=1.0. You can see that there are different threads under the subject column on the website. Every thread is a link on its own. once we click on individual links we can get user comments for that particular thread/subject/topic posted. eg: Forum Moderation Policy has 497 replies. Our aim is to extract all those 497 comments.

Step-1:
initially we would want to extract all links of the thread present on all pages. Now each page also has an hyper link. Hence the extract_links_python notebook will give you the code for extracting all available links on one page.
Once you have a file containing all possible links from your different pages. You would want to clean the irrational links and only keep the hyperlinks that are incorporated of your thread links. Hence, now you have a clean file having only the hyper links of the desired pages.

Step-2:
Using this file which has a list of our pages. we will now use a R-code for extracting our comments on a thread and the time of the comment posted. You would want to look at the BitcoinRextract.R file to understand further about the extraction.
The output file that you get looks like the csv file attached in the documents.

It has a total of 108 columns. which has 54 topics comments column with thread as the header and time stamp column. Ofcourse you need to clean and prune the data a lot now to get valuable results.

Happy Coding!








