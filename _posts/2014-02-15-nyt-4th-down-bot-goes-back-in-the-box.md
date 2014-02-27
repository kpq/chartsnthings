---
layout: post
title:  "NYT 4th Down Bot Goes Back in the Box"
date:   2014-02-15 17:01:51
---

<style type="text/css">
.two-by {
	margin-left: -50px;
	width: 900px;
}
.two-by img {
	width:49%;
}

.big {
	margin-left: -175px;
	max-width: 1050px;	
}

.big img {
	width:1050px;
}

.bot-grid img {
		height: 168px;
margin-bottom: 10px;
margin-right: 16px;
}

.bot-grid {
	margin: 30px 0 30px -50px;
	width:900px;

}
</style>

I've been meaning to write this for a while, and now that the Super Bowl has been done for two weeks, the newsworthiness of this post is near its absolute minumim, but let’s not waste too much time worrying about that, shall we?

For most of the fall, some colleagues and I developed [NYT 4th Down Bot](http://www.nytimes.com/newsgraphics/2013/11/28/fourth-downs/), a real-time tool that analyzed N.F.L. 4th down decisions in real time. I had been thinking about the project for a while – ever since first reading David Romer’s [signature paper](http://elsa.berkeley.edu/~dromer/papers/JPE_April06.pdf) on the subject a few years back – but the fall of 2013 was really the first time I felt like I was equipped to actually <em>make</em> even a crude demo. 

Earlier in the year, while working on a [graphic about the draft](http://www.nytimes.com/interactive/2013/04/25/sports/football/picking-the-best-in-the-nfl-draft.html?_r=0), I had spoken with Brian Burke, the creator of the popular football analytics web site [Advanced NFL Stats](http://www.advancednflstats.com/). I explained my idea to him (roughly, a web site that analyzed every 4th down of every game) and asked him if he'd be willing to create an API for his [4th Down Calculator](http://wp.advancednflstats.com/4thdncalc1.php) for a joint venture once the season started. He said yes, and I told him I'd be in touch in a few months.

Without getting into the moving parts too much, because it's insanely boring, the app is quite complicated. We're watching a live data feed of every NFL game (provided by a Canadian company called [SportsDirect](http://www.sportsdirectinc.com/content/), processing the feed to determine the situation and result of the play, hitting an API representing Brian Burke's 4th Down with that game situation, processing the response and publishing new data files to S3. Once we get the play from SportsDirect, the whole process takes about a minute.

My first sketches were simply small tables designed for a phone using data from the 2012 season. 

<div class="two-by">
	<img src="{{site.baseurl | asset_path: page.id}}/table-1.jpg">
	<img src="{{site.baseurl | asset_path: page.id}}/table-2.jpg">
	<h5>Page id: {{page.id}}</h5>
	<h5>Post url: {{post.url}}</h5>
	<h5>Base url: {{site.baseurl}}</h5>
</div>

As the concept became clearer, the tables became bigger, a little more interesting, and much more opinionated.

<img src="{{site.baseurl | asset_path: page.id}}/table-3.jpg">

I had been working on a demo for weeks before the Shan Carter and Jen Daniel suggested the idea of personifying Brian's model. (Originally, the tables simply compared "Coach says" to "math says", which is a little less fun.) This first started with "NYT Coachbot", a flat vector drawing from Jennifer.

<img src="{{site.baseurl | asset_path: page.id}}/table-4.jpg">

We then started giving the robot a little bit more of a mouth. 

<img src="{{site.baseurl | asset_path: page.id}}/table-5.jpg">

A few sketches later, we were really emphasizing the throwback style of 1980s computers and printers in the bot’s reports. 

<img src="{{site.baseurl | asset_path: page.id}}/table-6.jpg">
<img src="{{site.baseurl | asset_path: page.id}}/table-7.jpg">

The more we designed, the more we realized most people would be coming to the "play" pages directly from Twitter, so we had to make them as clear as possible to the uninitated – this is why each robot decision comes with a dead simple sentence that says exactly what it is.

<img src="{{site.baseurl | asset_path: page.id}}/simple-sentence.png">

By that point, the robot had become a real thing (even [fooling our friend](https://twitter.com/arnicas/status/410063538997039104) Lynn Cherny). The drawings and renderings are from Jennifer Daniel and Shan Carter, who worked in a back-and-forth style, bringing the bot to life using Modo and Adobe Illustrator.

<div class="big">
	<img src="{{site.baseurl | asset_path: page.id}}/progression.jpg">
</div>

Here are some of Jennifer's thoughts on reactions he could have. (Bummer about "ashamed" bot's lack of self-control.)

<img src="{{site.baseurl | asset_path: page.id}}/jd-concepts.png">

In the end, we didn't make all those poses, but we did do a lot of fun ones that really brought the concept to life. Here are all the things the 4th down bot liked to do (including dogging you for making nachos):

<div class="bot-grid">
	<img src="{{site.baseurl | asset_path: page.id}}/phone.png">
	<img src="{{site.baseurl | asset_path: page.id}}/angry.png">
	<img src="{{site.baseurl | asset_path: page.id}}/depressed.png">
	<img src="{{site.baseurl | asset_path: page.id}}/teatime.png">
	<img src="{{site.baseurl | asset_path: page.id}}/guac.png">
	<img src="{{site.baseurl | asset_path: page.id}}/reading-medium.png">
	<img src="{{site.baseurl | asset_path: page.id}}/respect.png">
	<img src="{{site.baseurl | asset_path: page.id}}/professor.png">
	<img src="{{site.baseurl | asset_path: page.id}}/thoughtful.png">
	<img src="{{site.baseurl | asset_path: page.id}}/touchdown.png">
</div>

In less than 3 months, it had more than 10,000 Twitter followers, was shared on Twitter thousands of times, caught the interest of [economists](https://twitter.com/R_Thaler/status/430103904278167552), [journalists](http://www.niemanlab.org/2013/12/yes-the-vikings-should-have-gone-for-it-on-4th-down-and-a-new-york-times-robot-knows-why/) and even the CEO of Twitter himself, [Dick Costolo](https://twitter.com/dickc/status/430125767867891712).

It's certainly not perfect: it probably took too long to launch – we only started around Week 13 – and the lag between the end of the play and the analysis could feel more "live." Because it was programmed to analyze decisions that already happened, some aspects of N.F.L. play aren't captured well. For example, when a team intentionally takes a penalty on 4th and 1 near midfield, the bot applauds the punt on 4th and 6 without properly scolding the 4th and 1. And, as many statisticians have said, it could display uncertainty a little better than it does. 







