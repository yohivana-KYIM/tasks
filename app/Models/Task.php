<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;

class Task extends Model
{
    use HasFactory;

    protected $fillable = ['title', 'description', 'status', 'start_date', 'end_date'];

    /**
     * Set the start_date attribute.
     *
     * @return \Illuminate\Database\Eloquent\Casts\Attribute
     */
    protected function startDate(): Attribute
    {
        return Attribute::make(
            set: fn ($value) => $this->checkDates($value, $this->end_date)
        );
    }

    /**
     * Set the end_date attribute.
     *
     * @return \Illuminate\Database\Eloquent\Casts\Attribute
     */
    protected function endDate(): Attribute
    {
        return Attribute::make(
            set: fn ($value) => $this->checkDates($this->start_date, $value)
        );
    }

    /**
     * Check that start_date does not exceed end_date.
     */
    protected function checkDates($startDate, $endDate)
    {
        if ($startDate && $endDate && strtotime($startDate) > strtotime($endDate)) {
            throw new \InvalidArgumentException('La date de début ne peut pas dépasser la date de fin.');
        }
        return $startDate ?? $endDate;
    }
}
