module Web.View.StaticPages.New where
import Web.View.Prelude

data NewView = NewView { staticPage :: StaticPage }

instance View NewView ViewContext where
    html NewView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={StaticPagesAction}>StaticPages</a></li>
                <li class="breadcrumb-item active">New StaticPage</li>
            </ol>
        </nav>
        <h1>New StaticPage</h1>
        {renderForm staticPage}
    |]

renderForm :: StaticPage -> Html
renderForm staticPage = formFor staticPage [hsx|

    {submitButton}
|]
