module Web.View.StaticPages.Home where
import Web.View.Prelude

data HomeView = HomeView

instance View HomeView ViewContext where
    html HomeView = [hsx|
        <div class="welcome">
            <h1>welcome.</h1>
            <p class="funny-easteregg">There's cool stuff comming soon.</p>
            <!--You really thought I did this with JavaScript? Yeah, go ahead and noscript me. You need internet explorer to stop me from animating things.-->
        </div>
    |]
