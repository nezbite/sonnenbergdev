module Web.View.StaticPages.Home where
import Web.View.Prelude

data HomeView = HomeView

instance View HomeView where
    html HomeView = [hsx|
    <div class="d-flex align-items-stretch flex-wrap" style="height:80vh">
        <div class="d-flex flex-column flex-fill justify-content-center">
            <h1>welcome.</h1>
            <p class="funny-easteregg">there's cool stuff coming soon.</p>
            <!--You really thought I did this with JavaScript? Yeah, go ahead and noscript me. You need internet explorer to stop me from animating things.-->
        </div>
        <div class="menu flex-fill d-flex align-items-center justify-content-center flex-wrap">
            {renderButton twitterIcon "@nezbite" "https://twitter.com/nezbite"}
            {renderButton youtubeIcon "digitallyinduced" "https://www.youtube.com/channel/UCcpsQ2pegPn4YMQO8BZVUbA"}
        </div>
    </div>
    |]
        where
            renderButton :: Html -> Text -> Text -> Html
            renderButton icon text link = [hsx|
            <a href={link} class="big-button mx-2">
                <div class="rounded border px-4" style="width: 200px; height: 200px">
                    <div class="p-3">
                        {icon}
                    </div>
                    <div class="text-center">
                        {text}
                    </div>
                </div>
            </a>
            |]
-- {renderButton keyboardIcon "Keyboard Mastery" "/"}