module Web.View.StaticPages.Home where
import Web.View.Prelude

data HomeView = HomeView

instance View HomeView where
    html HomeView = [hsx|
    <div>
        <a href={NewSessionAction}>Login</a>
    </div>
        <div class="welcome">
            <h1>welcome.</h1>
            <p class="funny-easteregg">There's cool stuff coming soon.</p>
            <!--You really thought I did this with JavaScript? Yeah, go ahead and noscript me. You need internet explorer to stop me from animating things.-->
        </div>
    |]
