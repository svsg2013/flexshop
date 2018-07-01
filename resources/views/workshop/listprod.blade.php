@extends('workshop')
@section('content')
    <!-- Content -->
    <div class="row">

        <!-- post content -->
        <div class="col-lg-8 blog__content mb-30">

            <h1 class="mb-20">Search Result for 'Tech'</h1>
                {!! $thisPosts !!}
            <!-- Pagination -->
        </div> <!-- end col -->

    </div> <!-- end content -->
    </div> <!-- end main container -->
@endsection