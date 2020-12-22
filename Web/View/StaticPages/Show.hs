module Web.View.StaticPages.Show where
import Web.View.Prelude

data ShowView = ShowView { staticPage :: StaticPage }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={StaticPagesAction}>StaticPages</a></li>
                <li class="breadcrumb-item active">Show StaticPage</li>
            </ol>
        </nav>
        <h1>Show StaticPage</h1>
    |]
