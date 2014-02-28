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

}





</style>

I've been meaning to write this for a while, and now that the Super Bowl has been done for two weeks, the newsworthiness of this post is near its absolute minumim, but let’s not waste too much time worrying about that, shall we?

For most of the fall, some colleagues and I developed [NYT 4th Down Bot](http://www.nytimes.com/newsgraphics/2013/11/28/fourth-downs/), a real-time tool that analyzed N.F.L. 4th down decisions in real time. I had been thinking about the project for a while – ever since first reading David Romer’s [signature paper](http://elsa.berkeley.edu/~dromer/papers/JPE_April06.pdf) on the subject a few years back – but the fall of 2013 was really the first time I felt like I was equipped to actually <em>make</em> even a crude demo. 

Earlier in the year, while working on a [graphic about the draft](http://www.nytimes.com/interactive/2013/04/25/sports/football/picking-the-best-in-the-nfl-draft.html?_r=0), I had spoken with Brian Burke, the creator of the popular football analytics web site [Advanced NFL Stats](http://www.advancednflstats.com/). I explained my idea to him (roughly, a web site that analyzed every 4th down of every game) and asked him if he'd be willing to create an API for his [4th Down Calculator](http://wp.advancednflstats.com/4thdncalc1.php) for a joint venture once the season started. He said yes, and I told him I'd be in touch in a few months.

Without getting into the moving parts too much, because it's insanely boring, the app is quite complicated. We're watching a live data feed of every NFL game (provided by a Canadian company called [SportsDirect](http://www.sportsdirectinc.com/content/), processing the feed to determine the situation and result of the play, hitting an API representing Brian Burke's 4th Down with that game situation, processing the response and publishing new data files to S3. Once we get the play from SportsDirect, the whole process takes about a minute. (Before Tom Giratikanon got involved, it took a lot longer than that – without him, the app would still be sitting on my Desktop.)

My first sketches were simply small tables designed for a phone using data from the 2012 season. 

<div class="two-by">
	<img src="{{site.baseurl | asset_path: page.id}}/table-1.jpg">
	<img src="{{site.baseurl | asset_path: page.id}}/table-2.jpg">
</div>

As the concept became clearer, the tables became bigger, more interesting, and much more opinionated.

<img src="{{site.baseurl | asset_path: page.id}}/table-3.jpg">

I had been working on a demo for weeks before the Shan Carter and Jen Daniel suggested the idea of personifying Brian's model. (Originally, the tables simply compared "Coach says" to "math says", which is less fun.) This first started with "NYT Coachbot", a flat vector drawing from Jennifer.

<img src="{{site.baseurl | asset_path: page.id}}/table-4.jpg">

We then started giving the robot more of a mouth. 

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

And what that looks like in Modo, the 3D program Shan used to render it.

<img src="{{site.baseurl | asset_path: page.id}}/image.png">


Here are some of Jennifer's thoughts on reactions he could have. (Bummer about "ashamed" bot's lack of self-control.)

<img src="{{site.baseurl | asset_path: page.id}}/jd-concepts.png">

In the end, we didn't make all those poses, but we did do a lot of fun ones that really brought the concept to life. Here are all the things the 4th down bot liked to do (including [dogging you](http://www.nytimes.com/newsgraphics/2013/11/28/fourth-downs/guacamole.html) for making nachos):

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

By the end of the season, it had more than 10,000 Twitter followers – in the process, winning two bets with Marc Lavalee (original bet was 5,000 followers and then a double-or-nothing), who is now obligated to buy a beer for "every man, woman and child" in the NYT newsroom.

Still, it's certainly not perfect. Here are some things that are wrong with it:

- It probably took too long to launch. We published around Week 13. Officially we missed our goal by only five days, but in retrospect we could have published something less polished and improved it as it gained momentum. (This is hard for us newspaper people to do.)

- It could feel more “live”. The lag between the end of the play and the analysis takes about a minute, but sometimes the delay on the play-by-play data lagged a bit, which meant you were getting bot analysis well after the other team started its drive. This isn't ideal, but there just isn't much we could do about it. 

- Because it was programmed to analyze decisions that already happened, some aspects of N.F.L. play aren't captured well. For example, when a team intentionally takes a penalty on 4th and 1 near midfield, the bot applauds the punt on 4th and 6 without properly scolding the 4th and 1. This [particularly annoyed](https://twitter.com/FO_ASchatz/status/422195580639936512) Aaron Schatz of Football Outsiders, who called the bot .

- As many statisticians noted, it could display uncertainty better than it does. From my perspective, that's the most legitimate criticism, and we hope to improve on it next year. 

Here's a list of notable 4th Down bot links for the offseason:

- [An intro post](http://www.advancednflstats.com/2013/12/new-feature-nyt-4th-down-bot.html) from Brian Burke when it was launched. "Even <em>I'm</em> tired of analyzing 4th downs."

- A [thoughtful critique](http://statsbylopez.wordpress.com/2013/12/04/my-quick-thoughts-on-the-4th-down-bot/) from a statistician's perspective.

- I talked about it on the [Advanced NFL Stats](http://www.advancednflstats.com/2014/01/podcast-episode-17-kevin-quealy.html) podcast.

- Neiman Lab [wrote a feature](http://www.niemanlab.org/2013/12/yes-the-vikings-should-have-gone-for-it-on-4th-down-and-a-new-york-times-robot-knows-why/) on it.

- Gigaom wrote [a long post](http://gigaom.com/2013/12/06/awesome-a-new-york-times-bot-is-second-guessing-nfl-coaches-on-twitter/) about it and then did [a longer feature](http://gigaom.com/2014/02/02/meet-the-fighter-pilot-trying-to-crack-the-code-of-nfl-data/) on [Brian Burke](https://twitter.com/Adv_NFL_Stats), who developed the statistical model that drives the bot.

- For some reason, it had something to do with [brands and content strategy](http://contently.com/strategist/2013/12/11/i-never-thought-the-machines-would-take-over-but-then-i-met-the-ny-times-4th-down-bot/), though to be honest, this article makes little sense.

- Nate Silver devoted three paragraphs of his [ESPN magazine cover story](http://espn.go.com/espn/story/_/id/10476210/nba-mlb-embrace-analytics-nfl-reluctant-espn-magazine) on the bot.

Still, although I'm biased, I think it ended up being pretty cool and I enjoyed being a part of it. Hopefully we introduce a cousin or two this summer, too. If not, preseason is only 6 months away.






