<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('Cate_id')->unsigned();
            $table->string('title')->unique();
            $table->string('metaTitle');
            $table->string('alias');
            $table->mediumText('summary');
            $table->string('description');
            $table->longText('content');
            $table->boolean('feature')->default(0)->nullable();
            $table->string('images');
            $table->boolean('hot')->default(0)->nullable();
            $table->integer('sort')->default(1)->unsigned();
            $table->integer('view')->unsigned();
            $table->boolean('active');
            $table->string('relation')->nullable();
            $table->foreign('Cate_id')
                ->references('id')
                ->on('categories')
                ->onDelete('cascade');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('news');
    }
}
