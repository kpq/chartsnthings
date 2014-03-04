---
layout: post
title:  "NYT 4th Down Bot"
date:   2014-03-04 17:01:51
slug: 2014-02-nyt-4th-down-bot-goes-back-in-the-box
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
	width: 1050px;
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
	display: inline-block;
}

@media all and (max-width: 768px) {

	.bot-grid img {
		float:left;
	}
	.bot-grid {
		width:100%;
	}
	.two-by {
		width:100%;
	}

	.two-by img {
		width:100%;
	}

	.big {
		width: 100%;
	}

}





</style>

For most of the fall, some colleagues and I developed [NYT 4th Down Bot](http://www.nytimes.com/newsgraphics/2013/11/28/fourth-downs/), a news application that analyzed N.F.L. 4th down decisions in real time. I had been thinking about a project like this for a long time – Amanda Cox forwarded me David Romer’s [paper](http://elsa.berkeley.edu/~dromer/papers/JPE_April06.pdf) at least three years ago – but the fall of 2013 was really the first time I felt like I was equipped to actually make a project like this happen.

Earlier in the year, while working on a [graphic about the draft](http://www.nytimes.com/interactive/2013/04/25/sports/football/picking-the-best-in-the-nfl-draft.html?_r=0), I had spoken with Brian Burke, the creator of the popular football analytics web site [Advanced NFL Stats](http://www.advancednflstats.com/). I explained my idea to him (roughly, a web site that analyzed every 4th down of every game) and asked him if he'd be willing to create an API for his [4th Down Calculator](http://wp.advancednflstats.com/4thdncalc1.php) for a joint venture once the season started. He said yes, and I told him I'd be in touch in a few months.

The app turned out to be complicated. We're watching a live data feed of every NFL game (provided by a Canadian company called [SportsDirect](http://www.sportsdirectinc.com/content/)), processing the feed to determine the situation and result of the play, hitting an API representing [Brian Burke's 4th Down calculator](http://wp.advancednflstats.com/4thdncalc1.php) with that game situation, processing the response and publishing new data files to S3. There is no real backend, no database and no static content – just a bunch of Node scripts publishing JSON files every 15 seconds anytime an N.F.L. game is happening. (Not by design...it just happened that way. I'm not opinionated about these sorts of things.)

Start to finish, the whole process took about a minute. (Before Tom Giratikanon got involved, it took a lot longer than that – without him, the app would still be sitting on my Desktop.)

My first sketches were simply small tables designed for a phone using data from the 2012 season.

<div class="two-by">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/table-1.jpg">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/table-2.jpg">
</div>

As the concept became clearer, the tables became bigger, more interesting, and much more opinionated.

<img style="width:100%;" src="{{site.baseurl}}/post-assets/{{page.slug}}/table-3.jpg">


I had been working on a demo for weeks before Shan Carter and Jen Daniel suggested the idea of personifying Brian's model. (Originally, the tables simply compared "Coach says" to "math says", clearly boring in retrospect.) This first started with "NYT Coachbot", a flat vector drawing from Jennifer.

<img src="{{site.baseurl}}/post-assets/{{page.slug}}/table-4.jpg">

We then started giving the robot more of a mouth.

<img src="{{site.baseurl}}/post-assets/{{page.slug}}/table-5.jpg">

A few sketches later, we were emphasizing the throwback style of 1980s computers and printers in the bot’s reports.

<img src="{{site.baseurl}}/post-assets/{{page.slug}}/table-6.jpg">
<img src="{{site.baseurl}}/post-assets/{{page.slug}}/table-7.jpg">

The more we designed, the more we realized most people would be coming to the "play" pages directly from Twitter, so we had to make them as clear as possible to the uninitated – this is why each robot decision comes with a dead simple sentence that says exactly what it is.

<img src="{{site.baseurl}}/post-assets/{{page.slug}}/simple-sentence.png">

The drawings and renderings are from Jennifer Daniel and Shan Carter, who worked in a back-and-forth style, bringing the bot to life using Modo and Adobe Illustrator.

<div class="big">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/progression.jpg">
</div>

And what that looks like in Modo, the 3D program Shan used to render it.

<img src="{{site.baseurl}}/post-assets/{{page.slug}}/image.png">


Here are some of Jennifer's thoughts on reactions he could have. (Bummer about "ashamed" bot's lack of self-control.)

<img src="{{site.baseurl}}/post-assets/{{page.slug}}/jd-concepts.png">

In the end, we didn't make all those poses, but we did do a lot of fun ones that really brought the concept to life. Here are all the things the 4th Down Bot liked to do (including [dogging you](http://www.nytimes.com/newsgraphics/2013/11/28/fourth-downs/guacamole.html) for making nachos). It even [fooled our friend](https://twitter.com/arnicas/status/410063538997039104) Lynn Cherny when it [signed off](https://twitter.com/NYT4thDownBot/status/409903997244276736) one night, which is almost as great as that time it was a [copy editor](http://graphics8.nytimes.com/newsgraphics/2013/11/28/fourth-downs/assets/static-images/copy.jpg) on the foreign desk.

Here are all the poses Shan put the bot in at one point or another:

<div class="bot-grid">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/phone.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/angry.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/depressed.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/teatime.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/guac.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/reading-medium.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/respect.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/professor.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/thoughtful.png">
	<img src="{{site.baseurl}}/post-assets/{{page.slug}}/touchdown.png">
</div>

By the end of the season, it had more than 10,000 Twitter followers and caught the attention of various [famous economists](https://twitter.com/R_Thaler/status/430103904278167552) and [CEOs of Twitter](https://twitter.com/dickc/status/430125767867891712). 

Still, it's certainly not perfect. Here are some things that are wrong with it:

- It probably took too long to launch. We published around Week 13. Officially, we missed our goal by only five days, but in retrospect we could have published something less polished and improved it as it gained momentum. (This is hard for us newspaper people to do.)

- It could feel more “live”. The lag between the end of the play and the analysis takes about a minute, but sometimes the delay on the play-by-play data lagged a bit, which meant you were getting bot analysis well after the other team started its drive. This isn't ideal, but there just wasn't much we could do about it.

- Because it was programmed to analyze decisions that already happened, some aspects of N.F.L. play aren't captured well. For example, when a team intentionally takes a penalty on 4th and 1 near midfield, the bot applauds the punt on 4th and 6 without properly scolding the 4th and 1. This [particularly annoyed](https://twitter.com/FO_ASchatz/status/422195580639936512) Aaron Schatz of Football Outsiders, who later [got over it](https://twitter.com/FO_ASchatz/status/422447526407864320).

- As many statisticians noted, it could display uncertainty better than it does. From my perspective, that's the most legitimate criticism, and we hope to improve on it next year.

Still, although we're biased, we think was a successful, well-executed project and a novel use of technology for news. Tom Giratikanon even gave the project his highest praise: both "not the worst" and "worth doing."

Here's a list of notable NYT 4th Down Bot links for the offseason (and if there are others, I'm happy to add them):

- [An intro post](http://www.advancednflstats.com/2013/12/new-feature-nyt-4th-down-bot.html) from Brian Burke when it was launched. "Even <em>I'm</em> tired of analyzing 4th downs."

- A [thoughtful critique](http://statsbylopez.wordpress.com/2013/12/04/my-quick-thoughts-on-the-4th-down-bot/) from a statistician's perspective.

- I talked about it on the [Advanced NFL Stats](http://www.advancednflstats.com/2014/01/podcast-episode-17-kevin-quealy.html) podcast.

- Neiman Lab [wrote a feature](http://www.niemanlab.org/2013/12/yes-the-vikings-should-have-gone-for-it-on-4th-down-and-a-new-york-times-robot-knows-why/) on it.

- Gigaom wrote [a long post](http://gigaom.com/2013/12/06/awesome-a-new-york-times-bot-is-second-guessing-nfl-coaches-on-twitter/) about it and then did [a longer feature](http://gigaom.com/2014/02/02/meet-the-fighter-pilot-trying-to-crack-the-code-of-nfl-data/) on [Brian Burke](https://twitter.com/Adv_NFL_Stats), who developed the statistical model that drives the bot.

- For some reason, it had something to do with [brands and content strategy](http://contently.com/strategist/2013/12/11/i-never-thought-the-machines-would-take-over-but-then-i-met-the-ny-times-4th-down-bot/), though to be honest, this article makes little sense.

- Nate Silver devoted a few paragraphs of his [ESPN magazine cover story](http://espn.go.com/espn/story/_/id/10476210/nba-mlb-embrace-analytics-nfl-reluctant-espn-magazine) on the bot.

We're hoping to introduce a cousin or two this summer, too. If not, well, preseason is only 6 months away.






