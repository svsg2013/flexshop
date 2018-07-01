@extends('workshop')
@section('content')
@section('body')
    <body class="bg-light single-post">
@endsection
    <div class="row">
        <div class="col-lg-8 blog__content mb-30" style="text-align: justify">

            <!-- Breadcrumbs -->
            <ul class="breadcrumbs">
                <li class="breadcrumbs__item">
                    <a href="index.html" class="breadcrumbs__url"><i class="ui-home"></i></a>
                </li>
                <li class="breadcrumbs__item">
                    <a href="index.html" class="breadcrumbs__url">News</a>
                </li>
                <li class="breadcrumbs__item breadcrumbs__item--current">
                    World
                </li>
            </ul>

            <!-- standard post -->
            <article class="entry">
                {!! $thisSinglePost !!}

                <!-- Prev / Next Post -->
                        {!! $thisPreNe !!}
                    <!-- End - Prev / Next Post -->
                <!-- Related Posts -->
                <div class="related-posts">
                    <div class="title-wrap mt-40">
                        <h5 class="uppercase">Tin lien quan</h5>
                    </div>
                    {!! $thisRelate !!}
                </div> <!-- end related posts -->

            </article> <!-- end standard post -->
        </div>
    </div>
@endsection
