module Web.View.StaticPages.About where
import Web.View.Prelude

data AboutView = AboutView

instance View AboutView where
    html AboutView = [hsx|
    <h1>i am daniel</h1>
    <p>i'm a software developer from germany working <a href="https://twitter.com/digitallyinduce">@digitallyinduced</a>. i really enjoy lowercase.</p>
    <p>i use this website to showcase stuff i do. i will probably start a blog or something like that soon.</p>
    |]