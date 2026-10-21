<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FitCore._Default" %>

<asp:Content ID="HomeContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero grain">
        <canvas id="ecg" class="ecg" aria-hidden="true"></canvas>
        <div class="wrap hero-grid">
            <div>
                <h1><span>Train anywhere.</span><span class="outline">Belong everywhere.</span></h1>
                <p class="lead">FitCore brings live classes, a full workout library and real coaching to your living room. A complete fitness facility, entirely online.</p>
                <div class="cta">
                    <a class="btn btn-blue" data-magnet href="<%= ResolveUrl("~/Register.aspx") %>">Start training</a>
                    <a class="btn btn-line-light" data-magnet href="<%= ResolveUrl("~/Services.aspx") %>">Explore services</a>
                </div>
            </div>
            <aside class="monitor" aria-label="Pick your intensity">
                <p class="m-label"><i class="dot"></i>Pick your intensity</p>
                <p class="bpm"><output id="bpm">72</output><small>BPM</small></p>
                <div class="seg" role="group" aria-label="Intensity">
                    <button type="button" data-bpm="72" data-desc="Mobility, stretching and recovery classes." aria-pressed="true">Easy</button>
                    <button type="button" data-bpm="118" data-desc="Strength and yoga at a steady rhythm." aria-pressed="false">Steady</button>
                    <button type="button" data-bpm="168" data-desc="HIIT and conditioning that bring the burn." aria-pressed="false">Intense</button>
                </div>
                <p id="intensityDesc" class="m-desc">Mobility, stretching and recovery classes.</p>
                <p id="next" class="next">Next live class: <strong>HIIT Express</strong></p>
            </aside>
        </div>
    </section>

    <div class="marquee" aria-hidden="true">
        <div class="track">
            <span>HIIT</span><span>Strength</span><span>Yoga</span><span>Mobility</span><span>Cardio</span><span>Recovery</span><span>Coaching</span><span>Nutrition</span>
        </div>
    </div>

    <section class="inside">
        <div class="wrap">
            <h2>What's inside</h2>
            <p class="sub">Everything a great gym offers, rebuilt for wherever you are. Hover a panel to open it.</p>
            <div class="panels">
                <article class="panel t1 active" tabindex="0">
                    <div class="p-icon"><svg viewBox="0 0 24 24"><path d="m16 13 5.2 3.5a.5.5 0 0 0 .8-.4V7.9a.5.5 0 0 0-.8-.4L16 10.5"/><rect x="2" y="6" width="14" height="12" rx="2"/></svg></div>
                    <span class="p-vert">Live classes</span>
                    <div class="p-body">
                        <h3>Live Online Classes</h3>
                        <p>Stream HIIT, strength, yoga and mobility sessions with certified trainers in real time.</p>
                        <ul class="chips"><li>HIIT</li><li>Strength</li><li>Yoga</li><li>Mobility</li></ul>
                        <a class="textlink" href="<%= ResolveUrl("~/Services.aspx#live") %>">See live classes</a>
                    </div>
                </article>
                <article class="panel t2" tabindex="0">
                    <div class="p-icon"><svg viewBox="0 0 24 24"><path d="M6.5 6.5v11M17.5 6.5v11M3 9v6M21 9v6M6.5 12h11"/></svg></div>
                    <span class="p-vert">Workout library</span>
                    <div class="p-body">
                        <h3>On-Demand Workout Library</h3>
                        <p>300+ guided sessions for every level, from 10-minute resets to full training blocks.</p>
                        <ul class="chips"><li>300+ workouts</li><li>10 to 45 min</li><li>No equipment</li></ul>
                        <a class="textlink" href="<%= ResolveUrl("~/Services.aspx#library") %>">Browse the library</a>
                    </div>
                </article>
                <article class="panel t3" tabindex="0">
                    <div class="p-icon"><svg viewBox="0 0 24 24"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.9M16 3.1a4 4 0 0 1 0 7.8"/></svg></div>
                    <span class="p-vert">Coaching</span>
                    <div class="p-body">
                        <h3>1-on-1 Coaching</h3>
                        <p>Personalized programming and form feedback from a dedicated FitCore coach.</p>
                        <ul class="chips"><li>Weekly program</li><li>Form reviews</li><li>Direct chat</li></ul>
                        <a class="textlink" href="<%= ResolveUrl("~/Services.aspx#coaching") %>">Meet your coach</a>
                    </div>
                </article>
                <article class="panel t4" tabindex="0">
                    <div class="p-icon"><svg viewBox="0 0 24 24"><path d="M19 14c1.5-1.5 3-3.2 3-5.5A5.5 5.5 0 0 0 16.5 3c-1.8 0-3 .5-4.5 2-1.5-1.5-2.7-2-4.5-2A5.5 5.5 0 0 0 2 8.5c0 2.3 1.5 4 3 5.5l7 7Z"/><path d="M3.2 12h6.3l.5-1 2 4.5 2-7 1.5 3.5h5.3"/></svg></div>
                    <span class="p-vert">Nutrition</span>
                    <div class="p-body">
                        <h3>Nutrition Plans</h3>
                        <p>Simple, sustainable meal guidance built around your goals and schedule.</p>
                        <ul class="chips"><li>Meal plans</li><li>Grocery lists</li><li>Habit tracker</li></ul>
                        <a class="textlink" href="<%= ResolveUrl("~/Services.aspx#nutrition") %>">See nutrition plans</a>
                    </div>
                </article>
            </div>
        </div>
    </section>

    <section class="journey grain">
        <div class="wrap">
            <h2>Fitness that fits your life</h2>
            <p class="sub">Our purpose is simple: make expert training accessible to everyone, without the commute, the crowds or the guesswork.</p>
            <ol class="steps">
                <li><b>Choose a plan</b><span>Pick the level of support you want. Change it any time.</span></li>
                <li><b>Book your first class</b><span>Join live or press play on a workout that fits your day.</span></li>
                <li><b>Keep going</b><span>Track your progress and check in with your coach.</span></li>
            </ol>
            <div class="cta">
                <a class="btn btn-light" data-magnet href="<%= ResolveUrl("~/Register.aspx") %>">Register today</a>
                <a class="btn btn-line-light" data-magnet href="<%= ResolveUrl("~/About.aspx") %>">About FitCore</a>
            </div>
        </div>
    </section>

</asp:Content>
