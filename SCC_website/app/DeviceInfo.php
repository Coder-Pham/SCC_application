<?php


namespace App;

use Illuminate\Database\Eloquent\Model;

class DeviceInfo extends Model{

    protected $table = 'device';
    protected $primaryKey = 'device_id';
    public $incrementing = false;
    public $timestamps = false;

}
